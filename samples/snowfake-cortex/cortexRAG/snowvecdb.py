# SnowVectorDB Class to generate and store embeddings from a knowledge base in a Snowflake Table

class SnowVectorDB():
    # given raw pdf data, table name, embeddings model
    # pdf data in local directory or stage
    # table is exisiting or new

    def __init__(self,
                 snowflake_session:object,
                 embeddings_model: str = "e5-base-v2",
                 chunk_size: int = 1000,
                 chunk_overlap: int = 100,
                 file_ext: str = "pdf",
                 chunker: bool = False
                 ):
        
        self.client = snowflake_session
        self.embeddings_model = embeddings_model
        self.chunk_size = chunk_size
        self.chunk_overlap = chunk_overlap
        self.file_extension = file_ext

        if chunker:
            self._register_chunker(chunk_size=self.chunk_size,chunk_overlap=self.chunk_overlap)
    
    def _create_table(self,table_name) -> None:
    
        table_creator = f"""create or replace TABLE {table_name} ( 
            RELATIVE_PATH VARCHAR(16777216), -- Relative path to the PDF file
            FILE_URL VARCHAR(16777216), -- URL for the PDF
            SCOPED_FILE_URL VARCHAR(16777216), -- Scoped url (you can choose which one to keep depending on your use case)
            CHUNK VARCHAR(16777216), -- Piece of text
            CHUNK_VEC VECTOR(FLOAT, 768) );  -- Embedding using the VECTOR data type"")"""
        
        self.client.sql(table_creator).collect()
    
    def _stage_loader(self,source_directory,table_name,stage:str = None) -> None:

        print("Loading source data...")
        stage = table_name if stage is None else stage
        self.client.sql(f"create stage if not exists {stage}_RAG DIRECTORY = ( ENABLE = TRUE) ENCRYPTION = (TYPE = 'SNOWFLAKE_SSE')").collect()
        source_data = f"{source_directory}/*.{self.file_extension}"
        self.client.file.put(source_data, f"@{stage}_RAG", auto_compress=False, overwrite=True)
        self.client.sql(f"ALTER STAGE {stage}_RAG REFRESH").collect()
        print("...data load complete.")

    
    def _table_loader(self,table,stage:str = None) -> None:

        print("Creating embeddings table...")
        self._create_table(table)

        stage = table if stage is None else stage

        embeddings_loader = f"""insert into {table} (relative_path, file_url,scoped_file_url, chunk, chunk_vec)
                            select relative_path, 
                                    file_url, 
                                    build_scoped_file_url(@{stage}_RAG, relative_path) as scoped_file_url,
                                    func.chunk as chunk,
                                    snowflake.cortex.embed_text('{self.embeddings_model}',CONCAT(relative_path,' ',chunk)) as chunk_vec
                            from 
                                directory(@{stage}_RAG),
                                TABLE(pdf_text_chunker(build_scoped_file_url(@{stage}_RAG, relative_path))) as func;"""

        self.client.sql(embeddings_loader).collect()
        print(f"Embeddings succesfully loaded in Snowflake table:{table.upper()}")
    
    def _register_chunker(self,chunk_size,chunk_overlap) -> None:

        pdf_chunker_registration = f"""create or replace function pdf_text_chunker(file_url string)
        returns table (chunk varchar)
        language python
        runtime_version = '3.10'
        handler = 'pdf_text_chunker'
        packages = ('snowflake-snowpark-python','PyPDF2', 'langchain','PyCryptodome')
        as
        $$
        from snowflake.snowpark.types import StringType, StructField, StructType
        from langchain.text_splitter import RecursiveCharacterTextSplitter
        from snowflake.snowpark.files import SnowflakeFile
        import PyPDF2, io
        import logging
        import pandas as pd

        class pdf_text_chunker:

            def read_pdf(self, file_url: str) -> str:

                with SnowflakeFile.open(file_url, 'rb',require_scoped_url = False) as f:
                    buffer = io.BytesIO(f.readall())

                reader = PyPDF2.PdfReader(buffer)   
                text = ""
                for page in reader.pages:
                    try:
                        text += page.extract_text()
                    except:
                        text = "Unable to Extract"

                return text

            def process(self,file_url: str):

                text = self.read_pdf(file_url)

                text_splitter = RecursiveCharacterTextSplitter(
                chunk_size = {chunk_size}, #Adjust this as you see fit
                chunk_overlap  = {chunk_overlap}, #This let's text have some form of overlap. Useful for keeping chunks contextual
                length_function = len
                )

                chunks = text_splitter.split_text(text)
                df = pd.DataFrame(chunks, columns=['chunks'])

                yield from df.itertuples(index=False, name=None)$$;"""
        
        self.client.sql(pdf_chunker_registration).collect()

    
    def __call__(self,
                 vector_table_name:str,
                 data_source_directory:str,
                 stage: str = None):


        self._stage_loader(source_directory=data_source_directory,table_name=vector_table_name)

        self._table_loader(table=vector_table_name)

    