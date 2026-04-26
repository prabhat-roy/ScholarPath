"""Daily learning engagement ETL - Cassandra (xAPI) -> ClickHouse roll-ups."""
from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="daily_engagement_etl",
    start_date=datetime(2026, 1, 1),
    schedule="@daily",
    catchup=False,
    tags=["scholarpath", "analytics"],
) as dag:
    extract   = BashOperator(task_id="extract",   bash_command="dbt run --select staging.xapi_*")
    transform = BashOperator(task_id="transform", bash_command="dbt run --select analytics.engagement_*")
    test      = BashOperator(task_id="test",      bash_command="dbt test --select analytics.engagement_*")
    extract >> transform >> test
