from pyspark.sql import SparkSession
import configparser

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('DROP_TABLES').getOrCreate()

spark.sql("DROP TABLE "+DB_PREFIX+"workshop_raw.atm_trx")
spark.sql("DROP TABLE "+DB_PREFIX+"workshop_raw.mobile_trx")
spark.sql("DROP TABLE "+DB_PREFIX+"workshop_raw.cust")