from pyspark.sql import SparkSession

spark = SparkSession.builder.appName('VERSION').getOrCreate()

spark.version