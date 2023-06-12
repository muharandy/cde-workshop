from pyspark.sql import SparkSession
import configparser

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('TRUNCATE_TRX_SMY').getOrCreate()

QUERY = """
TRUNCATE TABLE """+DB_PREFIX+"""EVOLV_MART.TRX_SMY
"""

spark.sql(QUERY)