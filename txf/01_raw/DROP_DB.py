from pyspark.sql import SparkSession
import configparser

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('DROP_TABLES').getOrCreate()

spark.sql("DROP DATABASE "+DB_PREFIX+"workshop_raw")
spark.sql("DROP DATABASE "+DB_PREFIX+"workshop_stg")
spark.sql("DROP DATABASE "+DB_PREFIX+"workshop_mart")