"""Aggregate xAPI engagement events from Kafka -> ClickHouse for dashboards."""
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, window

spark = SparkSession.builder.appName("xapi-engagement").getOrCreate()
df = (
    spark.readStream.format("kafka")
    .option("kafka.bootstrap.servers", "kafka.messaging:9092")
    .option("subscribe", "xapi.statement.recorded")
    .load()
)
agg = (
    df.selectExpr("CAST(value AS STRING) AS json")
      .selectExpr("json_tuple(json,'student_token','course_id','verb_id') AS (student,course,verb)")
      .groupBy(window(col("timestamp"), "1 hour"), "course", "verb")
      .count()
)
(
    agg.writeStream.format("clickhouse")
    .outputMode("complete")
    .option("table", "scholarpath_analytics.engagement_hourly")
    .start()
    .awaitTermination()
)
