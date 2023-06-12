from pyspark.sql import SparkSession
import configparser

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('INS_STG_CUST').getOrCreate()

QUERY = """
    SELECT * FROM """+DB_PREFIX+"""WORKSHOP_RAW.CUST
"""
df = spark.sql(QUERY)
df.write.mode("overwrite").saveAsTable(DB_PREFIX+"WORKSHOP_STG.CUST")