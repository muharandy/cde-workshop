from pyspark.sql import SparkSession
import configparser

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('CREATE_DB').getOrCreate()

spark.sql("CREATE DATABASE "+DB_PREFIX+"WORKSHOP_RAW")
spark.sql("CREATE DATABASE "+DB_PREFIX+"WORKSHOP_STG")
spark.sql("CREATE DATABASE "+DB_PREFIX+"WORKSHOP_MART")