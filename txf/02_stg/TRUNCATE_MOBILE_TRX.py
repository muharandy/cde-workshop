from pyspark.sql import SparkSession
import configparser
import os 
import sys

config = configparser.ConfigParser()
config.read('/app/mount/config.ini')
DB_PREFIX = config['CDE-WORKSHOP']['DB_PREFIX'].replace('"','').replace("\'",'')

spark = SparkSession.builder.appName('TRUNCATE_MOBILE_TRX').getOrCreate()

QUERY = """
TRUNCATE TABLE """+DB_PREFIX+"""WORKSHOP_STG.MOBILE_TRX
"""

spark.sql(QUERY)