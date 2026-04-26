"""Early-intervention at-risk model.

Predicts probability of dropout / failure within the next 4 weeks given
recent engagement + grade trajectory. Output is consumed by the
analytics/early-intervention service which raises counsellor alerts when
the predicted risk crosses a configurable threshold.
"""
import argparse, mlflow

def main() -> None:
    p = argparse.ArgumentParser()
    p.add_argument("--table", required=True)
    args = p.parse_args()

    with mlflow.start_run(run_name="early-intervention-xgb"):
        # Placeholder: pull feature rows from ClickHouse, fit an XGBoost
        # classifier with calibrated probabilities, log model + metrics.
        mlflow.log_param("features_table", args.table)
        mlflow.log_metric("auc", 0.0)
        mlflow.log_metric("recall_at_top10pct", 0.0)

if __name__ == "__main__":
    main()
