cde job create --name TRUNCATE_CONS_RATE_DD --type spark --mount-1-resource cde-tel-prd --application-file txf/03_mart/TRUNCATE_CONS_RATE_DD.py
cde job create --name INS_STG_CHG_MART_CONS_RATE_DD --type spark --mount-1-resource cde-tel-prd --application-file txf/03_mart/INS_STG_CHG_MART_CONS_RATE_DD.py
cde job create --name INS_STG_UPCC_MART_CONS_RATE_DD --type spark --mount-1-resource cde-tel-prd --application-file txf/03_mart/INS_STG_UPCC_MART_CONS_RATE_DD.py
cde job create --name TRUNCATE_IFRS_TC_CHG --type spark --mount-1-resource cde-tel-prd --application-file txf/02_stg/TRUNCATE_IFRS_TC_CHG.py
cde job create --name TRUNCATE_USAGE_UPCC_EDR --type spark --mount-1-resource cde-tel-prd --application-file txf/02_stg/TRUNCATE_USAGE_UPCC_EDR.py
cde job create --name TRUNCATE_WISDOM --type spark --mount-1-resource cde-tel-prd --application-file txf/02_stg/TRUNCATE_WISDOM.py
cde job create --name INS_STG_IFRS_TC_CHG --type spark --mount-1-resource cde-tel-prd --application-file txf/02_stg/INS_STG_IFRS_TC_CHG.py
cde job create --name INS_STG_USAGE_UPCC_EDR --type spark --mount-1-resource cde-tel-prd --application-file txf/02_stg/INS_STG_USAGE_UPCC_EDR.py
cde job create --name INS_STG_WISDOM --type spark --mount-1-resource cde-tel-prd --application-file txf/02_stg/INS_STG_WISDOM.py