from pyspark.sql import SparkSession
import configparser

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')
STORAGE_PREFIX = config['CDE-WORKSHOP']['STORAGE_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('CREATE_TABLES').getOrCreate()

QUERY = """
CREATE EXTERNAL TABLE dev_workshop_raw.atm_trx(
    trx_id int,
    account_no int,
    channel string,
    debit_credit string,
    amount numeric,
    currency string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '"""+STORAGE_PREFIX+"""/warehouse/tablespace/external/hive/"""+DB_PREFIX.lower()+"""workshop_raw.db/atm_trx'
"""

spark.sql(QUERY)

QUERY = """
CREATE EXTERNAL TABLE `dev_workshop_raw`.`mobile_trx`(
    trx_id int,
    account_no int,
    channel string,
    debit_credit string,
    amount numeric,
    currency string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '"""+STORAGE_PREFIX+"""/warehouse/tablespace/external/hive/"""+DB_PREFIX.lower()+"""workshop_raw.db/mobile_trx' 
"""

spark.sql(QUERY)

QUERY = """
CREATE EXTERNAL TABLE `dev_workshop_raw`.`cust`(
    account_no int,
    account_type string,
    date_opened string,
    merchant_type string,
    name string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '"""+STORAGE_PREFIX+"""/warehouse/tablespace/external/hive/"""+DB_PREFIX.lower()+"""workshop_raw.db/cust'
"""

spark.sql(QUERY)