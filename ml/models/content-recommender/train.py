"""Hybrid content recommender.

- Collaborative filtering via Neo4j graph traversal over (Student)-[:HAS_MASTERED]->(Skill)
  and (Lesson)-[:TEACHES]->(Skill).
- Content-based scoring via TF-IDF over lesson body text.
"""
import argparse, mlflow

def main() -> None:
    p = argparse.ArgumentParser()
    p.add_argument("--neo4j", required=True)
    p.add_argument("--corpus", required=True)
    args = p.parse_args()

    with mlflow.start_run(run_name="content-recommender"):
        # Placeholder: pull skill-mastery edges, build sparse user-item matrix,
        # train item embeddings, fit TF-IDF over lesson text, persist both
        # artifacts to MLflow for the recommendation-service to load.
        mlflow.log_param("neo4j", args.neo4j)
        mlflow.log_param("corpus", args.corpus)

if __name__ == "__main__":
    main()
