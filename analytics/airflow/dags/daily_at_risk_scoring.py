"""Daily at-risk scoring - runs early-intervention model and publishes alerts."""
from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="daily_at_risk_scoring",
    start_date=datetime(2026, 1, 1),
    schedule="0 6 * * *",
    catchup=False,
    tags=["scholarpath", "analytics", "early-intervention"],
) as dag:
    score   = BashOperator(task_id="score",   bash_command="python -m mlflow run ml/models/early-intervention -e predict")
    publish = BashOperator(task_id="publish", bash_command="python -m scholarpath.early_intervention.publisher")
    score >> publish
