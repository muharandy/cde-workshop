from pyspark.sql import SparkSession
import configparser

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('INS_STG_MOBILE_MART_TRX_SMY').getOrCreate()

QUERY = """
SELECT
  *
FROM """+DB_PREFIX+"""WORKSHOP_STG.MOBILE_TRX
"""
df = spark.sql(QUERY)
df.write.mode("append").partitionBy("event_date").saveAsTable(DB_PREFIX+"EVOLV_MART.TRX_SMY")