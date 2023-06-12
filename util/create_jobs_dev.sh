cde job create --name INS_STG_ATM_TRX --type spark --mount-1-resource cde-evolv --application-file txf/02_stg/INS_STG_ATM_TRX.py
cde job create --name INS_STG_MOBILE_TRX --type spark --mount-1-resource cde-evolv --application-file txf/02_stg/INS_STG_MOBILE_TRX.py
cde job create --name INS_STG_CUST --type spark --mount-1-resource cde-evolv --application-file txf/02_stg/INS_STG_CUST.py
cde job create --name INS_STG_ATM_MART_TRX_SMY --type spark --mount-1-resource cde-evolv --application-file txf/03_mart/INS_STG_ATM_MART_TRX_SMY.py
cde job create --name INS_STG_MOBILE_MART_TRX_SMY --type spark --mount-1-resource cde-evolv --application-file txf/03_mart/INS_STG_MOBILE_MART_TRX_SMY.py