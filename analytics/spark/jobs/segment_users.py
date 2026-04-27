from pyspark.sql import SparkSession
from pyspark.ml.feature import VectorAssembler
from pyspark.ml.clustering import KMeans
spark = SparkSession.builder.appName("scholarpath-segment").getOrCreate()
df = spark.read.format("iceberg").load("scholarpath_mart.user_features")
assembler = VectorAssembler(inputCols=["recency_days","frequency_30d","monetary_30d"], outputCol="features")
pipeline = KMeans(featuresCol="features", k=5, seed=42)
model = pipeline.fit(assembler.transform(df))
preds = model.transform(assembler.transform(df))
preds.select("user_id","prediction").writeTo("scholarpath_mart.user_segments").using("iceberg").createOrReplace()
