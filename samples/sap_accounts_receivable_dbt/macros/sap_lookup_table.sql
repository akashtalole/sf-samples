
{% macro sap_lookup_table() %}
    {% set lookup_table = ({
        "ABGRU":"REASON_FOR_REJECTION",
        "ABKRS":"",
        "ABLAD":"UNLOADING_POINT",
        "ABRVW":"USAGE",
        "ABSTA":"",
        "ACRN_ID":"",
        "ADRNR":"ADDRESS",
        "AEDAT":"LAST_DOC_CHANGE_BY_TRANSACTION",
        "AEKLK":"",
        "AENAM":"CHANGED_BY",
        "AESZN":"",
        "AKTNR":"PROMOTION",
        "ANCUR":"",
        "ANGDT":"QUOTATION_DEADLINE",
        "ANRED":"TITLE",
        "ANSAL":"",
        "ANSVH":"",
        "ANZAU":"",
        "ANZAUPO":"",
        "ANZFK":"",
        "ANZFKPOS":"",
        "ANZLI":"",
        "ANZLIPOS":"",
        "ANZOAUPO":"",
        "APOPLANNED":"",
        "ATTYP":"MATERIAL_CATEGORY",
        "AUART":"",
        "AUBEL":"",
        "AUFSD":"CENTRAL_ORDER_BLOCK",
        "AUGBL":"CLEARING_DOCUMENT",
        "AUGDT":"CLEARING_DATE",
        "AUGRU":"",
        "AUPOS":"",
        "AWAHR":"",
        "AWKEY":"REFERENCE_KEY",
        "AWTYP":"REFERENCE_TRANSACTION",
        "B_DELAY":"",
        "BAHNE":"EXPRESS_STATION",
        "BAHNS":"TRAIN_STATION",
        "BBBNR":"INT_LOCATION_NO_1",
        "BBSNR":"INT_LOCATION_NO_2",
        "BEGDA":"START_DATE",
        "BEGRU":"AUTHORIZATION_GROUP",
        "BEHVO":"",
        "BELNR":"DOCUMENT_NUMBER",
        "BESTA":"",
        "BESTK":"",
        "BFLME":"",
        "BISMT":"",
        "BLANZ":"",
        "BLART":"DOCUMENT_TYPE",
        "BLATT":"",
        "BLDAT":"DOCUMENT_DATE",
        "BMATN":"",
        "BMENG":"",
        "BNDDT":"BINDING_PERIOD",
        "BONBA":"REBATE_BASIS",
        "BONUS":"SETTLEMENT_GROUP_1",
        "BRAN1":"INDUSTRY_CODE_1",
        "BRAN2":"INDUSTRY_CODE_2",
        "BRAN3":"INDUSTRY_CODE_3",
        "BRAN4":"INDUSTRY_CODE_4",
        "BRAN5":"INDUSTRY_CODE_5",
        "BRAND_ID":"",
        "BREIT":"",
        "BRGEW":"GROSS_WEIGHT",
        "BRSCH":"INDUSTRY",
        "BRTWR":"PO_LINE_AMOUNT",
        "BSCHL":"POSTING_KEY",
        "BSGRD":"",
        "BSTAT":"DOC_STATUS",
        "BSTME":"ORDER_UNIT",
        "BTGEW":"",
        "BTRTL":"",
        "BUBKZ":"CHECK_DIGIT",
        "BUDAT":"POSTING_DATE",
        "BUKRS":"COMPANY_CODE",
        "BUZEI":"LINE_ITEM",
        "BWAPPLNM":"",
        "BWSCL":"",
        "BWVOR":"",
        "BWVORG":"",
        "BZIRK":"SALES_DISTRICT",
        "CADKZ":"",
        "CARE_CODE":"",
        "CASSD":"CENTRAL_SALES_BLOCK",
        "CCC01":"BIOCHEMICAL_WARFARE",
        "CCC02":"NUCLEAR_NONPROLIF",
        "CCC03":"NATIONAL_SECURITY",
        "CCC04":"MISSILE_TECHNOLOGY",
        "CFOPC":"CUST_CFOP_CATEGORY",
        "CHARG":"BATCH",
        "CITYC":"CITY_CODE",
        "CIVVE":"NON_MILIT_USE",
        "CMENG":"",
        "CMETH":"",
        "CMKUA":"",
        "COLOR_ATINN":"",
        "COLOR":"",
        "COMPL":"",
        "COUNC":"COUNTY_CODE",
        "CPUDT":"ENTRY_DATE",
        "CUOBF":"",
        "DATAB":"VALID_FROM",
        "DATEFROM":"",
        "DATETO":"",
        "DATLT":"DATA_LINE",
        "DEAR1":"COMPETITORS",
        "DEAR2":"SALES_PARTNERS",
        "DEAR3":"PROSPECT",
        "DEAR4":"CUSTOMER_TYPE_4",
        "DEAR5":"DEFAULT_SOLD_TO_PTY",
        "DEAR6":"CONSUMER",
        "DISST":"",
        "DMBE2":"AMOUNT_IN_USD",
        "DMBE3":"LC3_AMOUNT",
        "DMBTR":"AMOUNT_IN_LC",
        "DMHAB":"",
        "DMSHB":"",
        "DMSOL":"",
        "DTAMS":"DME_INDICATOR",
        "DTAWS":"INSTRUCTION_KEY",
        "DUEFL":"DATA_TRANSFER_STATUS",
        "EAN11":"EAN_UPC",
        "EANNR":"",
        "EDATU":"",
        "EKONT":"INITIAL_CONTACT",
        "EKWSL":"",
        "ELOCTYPE":"",
        "EMPCT":"",
        "ENDDA":"END_DATE",
        "ENTAR":"",
        "ERDAT":"CREATED_ON",
        "ERGEI":"",
        "ERGEW":"",
        "ERNAM":"CREATED_BY",
        "ERSDA":"CREATED_ON",
        "ERVOE":"",
        "ERVOL":"",
        "ERZET":"",
        "ETENR":"schedule_line_number",
        "ETIAG":"",
        "ETIAR":"",
        "ETIFO":"",
        "ETIKG":"LAB_CUSTOMER_GROUP",
        "ETTYP":"",
        "EXABL":"UNLOADING_POINTS",
        "EXECLOC":"",
        "EXTWG":"",
        "FACELOC":"",
        "FAKSD":"CENTRAL_BILLING_BLOCK",
        "FAKSK":"",
        "FAKSP":"",
        "FAREG":"",
        "FASHGRD":"",
        "FBUDA":"",
        "FCURR":"",
        "FERTH":"",
        "FFACT":"",
        "FIBER_CODE1":"",
        "FIBER_CODE2":"",
        "FIBER_CODE3":"",
        "FIBER_CODE4":"",
        "FIBER_CODE5":"",
        "FIBER_PART1":"",
        "FIBER_PART2":"",
        "FIBER_PART3":"",
        "FIBER_PART4":"",
        "FIBER_PART5":"",
        "FILKD":"BRANCH_ACCOUNT",
        "FISCPER":"",
        "FISCVAR":"",
        "FISKN":"FISCAL_ADDRESS",
        "FITYP":"TAX_TYPE",
        "FKART":"",
        "FKDAT":"",
        "FKIMG":"",
        "FKLMG":"",
        "FKSAA":"",
        "FKSAK":"",
        "FKSTA":"",
        "FKSTK":"",
        "FKTYP":"",
        "FLOCTYPE":"",
        "FORMT":"",
        "FREE_CHAR":"",
        "FSH_COLLECTION":"",
        "FSH_SEASON_YEAR":"",
        "FSH_SEASON":"",
        "FSH_THEME":"",
        "FUELG":"",
        "fullname":"",
        "GBSTA":"",
        "GBSTK":"",
        "GDATU":"",
        "GEWEI":"UNIT_OF_WEIGHT",
        "GEWTO":"",
        "GFORM":"LEGAL_STATUS",
        "GJAHR":"FISCAL_YEAR",
        "GROES":"",
        "GSBER":"BUSINESS_AREA",
        "HKONT":"GL_ACCOUNT",
        "HOEHE":"",
        "HWAE2":"LOCAL_CURRENCY_2",
        "HWAE3":"LOCAL_CURRENCY_3",
        "HWAER":"LOCAL_CURRENCY",
        "HZUOR":"HIERARCHY_ASSIGNMENT",
        "IHIVI":"",
        "ILOOS":"",
        "INCO1":"INCOTERMS",
        "INCO2":"INCOTERMS_PART_2",
        "INHAL":"",
        "INHBR":"",
        "INHME":"",
        "INSPATDEBI":"AFTER_DELIVERY",
        "INSPBYDEBI":"BY_CUSTOMER",
        "IPRKZ":"PERIOD_IND_FOR_SLED",
        "JMJAH":"YEAR_NO_GIVEN_FOR",
        "JMZAH":"EMPLOYEE",
        "KAPPL":"APPLICATION",
        "KATR1":"ATTRIBUTE_1",
        "KATR10":"ATTRIBUTE_10",
        "KATR2":"ATTRIBUTE_2",
        "KATR3":"ATTRIBUTE_3",
        "KATR4":"ATTRIBUTE_4",
        "KATR5":"ATTRIBUTE_5",
        "KATR6":"ATTRIBUTE_6",
        "KATR7":"ATTRIBUTE_7",
        "KATR8":"ATTRIBUTE_8",
        "KATR9":"ATTRIBUTE_9",
        "KBMENG":"",
        "KDGRP":"",
        "KDKG1":"CONDITION_GROUP_1",
        "KDKG2":"CONDITION_GROUP_2",
        "KDKG3":"CONDITION_GROUP_3",
        "KDKG4":"CONDITION_GROUP_4",
        "KDKG5":"CONDITION_GROUP_5",
        "KEY1":"",
        "KHERK":"",
        "KINAK":"",
        "KKBER":"CREDIT_CONTROL_AREA",
        "KLMENG":"",
        "KMEIN":"",
        "KNAZK":"WORKING_TIMES",
        "KNRZA":"ALTERNATIVE_PAYER",
        "KNTYP":"",
        "KNUMA_AG":"",
        "KNURL":"URL",
        "KOAID":"",
        "KOART":"ACCOUNT_TYPE",
        "KOKRS":"CONTROLLING_AREA",
        "KOMKZ":"",
        "KONZS":"GROUP_KEY",
        "KOQUA":"",
        "KOSCH":"",
        "KOSTA":"",
        "KOSTL":"COST_CENTER",
        "KPEIN":"",
        "KSCHL":"CONDITION_TYPE",
        "KSTAT":"",
        "KTGRD":"",
        "KTOCD":"REFERENCE_ACCT_GROUP",
        "KTOKD":"ACCOUNT_GROUP",
        "KTOPL":"CHART_OF_ACCOUNTS",
        "KUKLA":"CUSTOMER_CLASSIFIC",
        "KUNAG":"",
        "KUNNR":"CUSTOMER",
        "KUNRG":"",
        "KURRF":"",
        "KURSK_DAT":"",
        "KURSK":"",
        "KURST":"EXCHANGE_RATE_TYPE",
        "KVARC":"",
        "KVGR1":"",
        "KVGR2":"",
        "KVGR3":"",
        "KVGR4":"",
        "KVGR5":"",
        "KWERT":"",
        "KWMENG":"",
        "KZEFF":"",
        "KZGVH":"",
        "KZKFG":"ORIGIN_OF_CONFIGURATN",
        "KZKUP":"",
        "KZNFM":"",
        "KZREV":"",
        "KZUMW":"",
        "KZVBR":"CONSUMPTION",
        "KZWI1":"SUBTOTAL_1",
        "KZWI2":"SUBTOTAL_2",
        "KZWI3":"SUBTOTAL_3",
        "KZWI4":"SUBTOTAL_4",
        "KZWI5":"SUBTOTAL_5",
        "KZWI6":"SUBTOTAL_6",
        "KZWSM":"",
        "LABOR":"",
        "LAEDA":"",
        "LAENG":"",
        "LAND1":"COUNTRY",
        "LANGU":"LANGUAGE_KEY",
        "LCURR":"",
        "LDDAT":"",
        "LFART":"",
        "LFDAT":"",
        "LFGSA":"",
        "LFGSK":"",
        "LFIMG_AVME":"",
        "LFIMG":"",
        "LFMNG":"",
        "LFSTA":"DELIVERY_STATUS",
        "LFSTK":"",
        "LGMNG":"",
        "LGNUM":"WAREHOUSE_NUMBER",
        "LGORT":"STORAGE_LOCATION",
        "LGPLA":"STORAGE_BIN",
        "LGTYP":"STORAGE_TYPE",
        "LIFNR":"VENDOR",
        "LIFSD":"CENTRAL_DELIVERY_BLOCK",
        "LIFSK":"",
        "LIFSP":"",
        "LIQDT":"",
        "LMENG":"",
        "LOCCO":"LOCATION_CODE",
        "LOEVM":"CENTRAL_DELETION_FLAG",
        "LOGSYS":"LOGICAL_SYSTEM",
        "LSMENG":"",
        "LSTEL":"",
        "LVORM":"",
        "LZONE":"TRANSPORTATION_ZONE",
        "MABER":"DUNNING_AREA",
        "MADAT":"LAST_DUNNED",
        "MAGRV":"",
        "MANDT":"CLIENT",
        "MANSP":"DUNNING_BLOCK",
        "MANST":"DUNNING_LEVEL",
        "MATKL":"MATERIAL_GROUP",
        "MATNR":"MATERIAL",
        "MATWA":"",
        "MBDAT":"",
        "MBRSH":"",
        "MCBW_ANZPK":"",
        "MCBW_BWERT":"",
        "MCBW_LFWRT":"",
        "MCBW_NETPR_AVKM":"",
        "MCBW_OLFWRT":"",
        "MCBW_VSWRT":"",
        "MCBW_WWERT":"",
        "MCEX_APCAMPAIGN":"",
        "MCEX_B_LFDAT":"",
        "MCEX_B_LFUHR":"",
        "MCEX_B_WADAT":"",
        "MCEX_I_LFDAT":"",
        "MCEX_I_LFDATLATE":"",
        "MCEX_I_LFUHR":"",
        "MCEX_I_LFUHRLATE":"",
        "MCEX_I_WADAT":"",
        "MCEX_I_WADATLATE":"",
        "MCEX_W_LFDAT":"",
        "MCEX_W_LFUHR":"",
        "MCEX_WBSTA_LOW":"",
        "MCOD1":"SEARCH_TERM",
        "MCOD2":"NAME_2",
        "MCOD3":"CITY",
        "MEABM":"",
        "MEINS":"BASE_UNIT_OF_MEASURE",
        "MFRNR":"MANUFACTURER",
        "MFRPN":"MANUFACTURER_PART_NO",
        "MHDHB":"",
        "MHDLP":"",
        "MHDRZ":"MIN_REM_SHELF_LIFE",
        "MILVE":"MILITARY_USE",
        "MLGUT":"",
        "MOLGA":"",
        "MONAT":"POSTING_PERIOD",
        "MPROF":"MFR_PART_PROFILE",
        "MSCHL":"DUNNING_KEY",
        "MSTAE":"",
        "MSTAV":"",
        "MSTDE":"",
        "MSTDV":"",
        "MTART":"MATERIAL_TYPE",
        "MTPOS_MARA":"",
        "MVGR1":"",
        "MVGR2":"",
        "MVGR3":"",
        "MVGR4":"",
        "MVGR5":"",
        "MWSBP":"",
        "NAME1":"NAME",
        "NAME2":"NAME_2",
        "NAME3":"NAME_3",
        "NAME4":"NAME_4",
        "NCSDATE":"",
        "NETDT":"",
        "NETPR":"NET_ORDER_PRICE",
        "NETWR":"NET_VALUE",
        "NIELS":"NIELSEN_INDICATOR",
        "NORMT":"",
        "NRFHG":"QUAL_F_FREEGOODSDIS",
        "NSNID":"",
        "NTGEW":"NET_WEIGHT",
        "NUMTP":"",
        "OAUME":"",
        "OAUWE":"",
        "OLFMNG":"",
        "ORGEH":"",
        "ORT01":"CITY",
        "ORT02":"DISTRICT",
        "PABLA":"",
        "PERIV":"FISCAL_YEAR_VARIANT",
        "PERNR":"PERSONNEL_NUMBER",
        "PERSG":"",
        "PERSK":"",
        "PFACH":"PO_BOX",
        "PFORT":"P_O_BOX_CITY",
        "PKUNRE":"",
        "PKUNRG":"",
        "PKUNWE":"",
        "PLANS":"",
        "PLGTP":"",
        "PMATA":"",
        "POSAR":"",
        "POSNR_VL":"",
        "POSNR":"",
        "PRDHA":"",
        "PRODH":"",
        "PROFL":"",
        "PROJK":"WBS_ELEMENT",
        "PROVG":"",
        "PRSDT":"",
        "PRZUS":"",
        "PS_POSID":"WBS_ELEMENT",
        "PSPDNR":"",
        "PSTAT":"",
        "PSTL2":"PO_BOX_POSTAL_CODE",
        "PSTLZ":"POSTAL_CODE",
        "PSTYV":"",
        "PVRTNR":"",
        "QMPUR":"",
        "RAUBE":"",
        "RBNRM":"",
        "RDMHD":"",
        "REBZG":"INVOICE_REFERENCE",
        "REBZJ":"FISCAL_YEAR_OF_RELATED_INVOICE",
        "REBZZ":"LINE_ITEM_IN_RELATED_INVOICE",
        "RECORD_DELETED":"",
        "REGIO":"REGION",
        "RFPNR":"",
        "ROCANCEL":"",
        "ROUTE":"",
        "RPA_WGH1":"",
        "RPA_WGH2":"",
        "RPA_WGH3":"",
        "RPA_WGH4":"",
        "RPMKR":"REGIONAL_MARKET",
        "RSTGR":"REASON_CODE",
        "SAISJ":"SEASON_YEAR",
        "SAISO":"SEASON",
        "SAITY":"",
        "SAKNR":"GL_ACCOUNT_FROM_SUBLEDGER",
        "SATNR":"CROSS_PLANT_CM",
        "SERLV":"",
        "SGTXT":"SGTEXT",
        "SHKZG":"DEBIT_CREDIT_IND",
        "SIZE1_ATINN":"",
        "SIZE1":"",
        "SIZE2_ATINN":"",
        "SIZE2":"",
        "SK1DT":"",
        "SK2DT":"",
        "SKFBP":"",
        "SKFBT":"DISCOUNT_BASE",
        "SKNTO":"CASH_DISCOUNT_AMOUNT",
        "SLGRP":"",
        "SLLEV":"",
        "SLOCTYPE":"",
        "SLREG":"",
        "SLTYP":"",
        "SMENG":"",
        "SNAME":"USER_NAME",
        "SOBKZ":"SPECIAL_STOCK",
        "SORTL":"SEARCH_TERM",
        "SPARA":"",
        "SPART":"INT_CO_BILLING_DIV",
        "SPERR":"CENTRAL_POSTING_BLOCK",
        "SPERZ":"PAYMENT_BLOCK",
        "SPRAS":"LANGUAGE_KEY",
        "SPROF":"",
        "STADAT":"",
        "STAT2":"",
        "STATUSPS":"",
        "STCD1":"TAX_NUMBER_1",
        "STCD2":"TAX_NUMBER_2",
        "STCD3":"TAX_NUMBER_3",
        "STCD4":"TAX_NUMBER_4",
        "STCDT":"TAX_NUMBER_TYPE",
        "STCEG":"VAT_REGISTRATION_NO",
        "STCUR":"",
        "STELL":"",
        "STFAK":"",
        "STKZA":"SALES_EQUALIZATN_TAX",
        "STKZN":"NATURAL_PERSON",
        "STKZU":"LIABLE_FOR_VAT",
        "STOCKLOC":"",
        "STOFF":"",
        "STRAS":"STREET",
        "STUNR":"STEP_NUMBER",
        "STWAE":"",
        "SUGRD":"",
        "TAKLV":"",
        "TCURR":"",
        "TDDAT":"",
        "TELBX":"TELEBOX_NUMBER",
        "TELF1":"TELEPHONE_1",
        "TELF2":"TELEPHONE_2",
        "TELFX":"FAX_NUMBER",
        "TELTX":"TELETEX_NUMBER",
        "TELX1":"TELEX_NUMBER",
        "TEMPB":"",
        "TFACT":"",
        "TRAGR":"",
        "TRFAR":"",
        "TRFGB":"",
        "TRFGR":"",
        "TRFKZ":"",
        "TRFST":"",
        "TXJCD":"TAX_JURISDICTION",
        "TXLW1":"ICMS_LAW",
        "TXLW2":"IPI_LAW",
        "TXTLG":"",
        "TXTMD":"",
        "TXTSH":"",
        "UEBTK":"UNLTD_OVERDELIVERY",
        "UEBTO":"OVER_DELIVERY_TOLERANCE",
        "UKURS":"",
        "UMJAH":"SALES_YEAR",
        "UMSA1":"ANNUAL_SALES",
        "UMSAT":"ANNUAL_SALES",
        "UMSKS":"SP_GL_TRANS_TYPE",
        "UMSKZ":"SPECIAL_GL_IND",
        "UMVKN":"",
        "UMVKZ":"",
        "UMZIN":"",
        "UMZIZ":"",
        "UNTTO":"UNDERDEL_TOLERANCE",
        "UPDMOD":"",
        "UPOSZ":"",
        "UVALL":"",
        "UVFAK":"",
        "UVPRS":"",
        "UVVLK":"",
        "UWAER":"CURRENCY_OF_SALES",
        "VABME":"",
        "VARCOND":"",
        "VBEAF":"",
        "VBEAV":"",
        "VBELN_VL":"",
        "VBELN":"BILLING_DOCUMENT",
        "VBEP_DELETED":"",
        "VBTYP":"",
        "VBUK_VBTYP":"",
        "VBUND":"TRADING_PARTNER",
        "VDATU":"",
        "VDSK1":"",
        "VGBEL":"",
        "VGPOS":"",
        "VGTYP_AK":"",
        "VGTYP":"",
        "VHART":"",
        "VKBUR":"",
        "VKGRP":"",
        "VKORG":"SALES_ORGANIZATION",
        "VOLEH":"VOLUME_UNIT",
        "VOLTO":"",
        "VOLUM":"VOLUME",
        "VPREH":"",
        "VPSTA":"",
        "VRKME":"",
        "VSMNG":"",
        "VSTEL":"SHIPPING_POINT_RECEIVING_PT",
        "VTWEG":"DISTRIB_CHANNEL",
        "VWPOS":"",
        "WA_DELAY_LF":"",
        "WADAT_IST":"",
        "WADAT":"",
        "WAERK_VBAK":"",
        "WAERK":"",
        "WAERS":"CURRENCY",
        "WAKTION":"",
        "WAVWR":"",
        "WBSTA":"",
        "WERKS":"PLANT",
        "WESCH":"",
        "WLDATBE":"DESIRED_DELIVERY_DATE",
        "WMENG":"ORDER_QUANTITY",
        "WMINR":"",
        "WRBTR":"AMOUNT_IN_DOCUMENT_CURRENCY",
        "WRHAB":"",
        "WRKST":"",
        "WRSHB":"",
        "WRSOL":"",
        "WSKTO":"DISCOUNT_AMOUNT",
        "XARCH":"ARCHIVED",
        "XBLNR":"VENDOR_INVOICE_NO",
        "XCHPF":"",
        "XCPDK":"ONE_TIME_ACCOUNT",
        "XGCHP":"",
        "XICMS":"ICMS_EXEMPT",
        "XKNZA":"ACCTS_FOR_ALT_PAYER",
        "XNEGP":"NEGATIVE_POSTING",
        "XREF1":"REFERENCE_KEY_1",
        "XREF2":"REFERENCE_KEY_2",
        "XREF3":"REFERENCE_KEY_3",
        "XSUBT":"SUBTRIB_GROUP",
        "XXIPI":"IPI_EXEMPT",
        "XZEMP":"ALT_PAYER_IN_DOC",
        "ZAEHK":"COUNTER",
        "ZBD1P":"DISCOUNT_PERCENT_1",
        "ZBD1T":"DAYS_1",
        "ZBD2P":"DISCOUNT_PERCENT_2",
        "ZBD2T":"DAYS_2",
        "ZBD3T":"DAYS_NET",
        "ZEIAR":"",
        "ZEIFO":"",
        "ZEINR":"",
        "ZEIVR":"",
        "ZFBDT":"BASELINE_PAYMENT_DTE",
        "ZIEME":"",
        "ZLSCH":"PAYMENT_METHOD",
        "ZLSPR":"PAYMENT_BLOCK",
        "ZMENG":"",
        "ZTERM":"TERMS_OF_PAYMENT",
        "ZUONR":"ASSIGNMENT",
        "ZWERT":"OA_TARGET_VALUE",
        "ZZDISMM":""
}) %}
    {{ return(lookup_table) }}
{%- endmacro %}