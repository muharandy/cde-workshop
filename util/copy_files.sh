aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/IFRS_TC_CHG.csv s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_tsel_raw.db/ifrs_tc_chg/IFRS_TC_CHG.csv
aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/USAGE_UPCC_EDR.csv s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_tsel_raw.db/usage_upcc_edr/USAGE_UPCC_EDR.csv
aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/WISDOM.csv s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_tsel_raw.db/wisdom/WISDOM.csv


aws s3 cp s3://se-indonesia-cdp/data/warehouse/tablespace/managed/hive/telkomsel.db/ifrs_tc_chg_stg_csv/ s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_tsel_raw.db/usage_upcc_edr/ --recursive --include "*"


aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/zz_ifrs_tc_chg_csv/ s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_tsel_raw.db/ifrs_tc_chg/ --recursive --include "*"
aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/zz_usage_upcc_edr_csv/ s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_tsel_raw.db/usage_upcc_edr/ --recursive --include "*"
aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/zz_wisdom_csv/ s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_tsel_raw.db/wisdom/ --recursive --include "*"


aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/zz_ifrs_tc_chg_csv/ s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_evolv_raw.db/atm_trx/ --recursive --include "*"
aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/zz_usage_upcc_edr_csv/ s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_evolv_raw.db/mobile_trx/ --recursive --include "*"
aws s3 cp s3://se-indonesia-cdp/data/staging/tsel_poc/zz_wisdom_csv/ s3://se-indonesia-cdp/data/warehouse/tablespace/external/hive/dev_evolv_raw.db/cust/ --recursive --include "*"