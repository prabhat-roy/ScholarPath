"""Proctoring anomaly detector (face / eye-gaze).

PRIVACY: training and inference both run on-cluster GPU nodes. Raw video is
deleted within the exam window; only fingerprinted, low-dimensional event
features are persisted long-term (FERPA + COPPA).
"""
import argparse, mlflow

def main() -> None:
    p = argparse.ArgumentParser()
    p.add_argument("--clips", required=True)
    args = p.parse_args()

    with mlflow.start_run(run_name="proctoring-anomaly-cv"):
        # Placeholder: train OpenCV + small CNN to flag look-away,
        # multi-face, screen-share patterns. Persist model weights only.
        mlflow.log_param("clips", args.clips)
        mlflow.log_metric("flagged_event_precision", 0.0)
        mlflow.log_metric("flagged_event_recall",    0.0)

if __name__ == "__main__":
    main()
