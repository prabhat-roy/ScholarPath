# ScholarPath Model Registry

| Model | Service | Version | Use case |
|---|---|---|---|
| adaptive-learning-irt-v1 | progress/adaptive-learning | 1.0.0 | Item Response Theory difficulty calibration; personalises next item |
| content-recommender-cf-v1 | analytics/content-recommendation | 1.0.0 | Hybrid CF (Neo4j graph) + content-based (TF-IDF on lesson text) |
| early-intervention-xgb-v1 | analytics/early-intervention | 0.9.0 | Gradient boosted at-risk classifier (engagement + grade decay features) |
| proctoring-anomaly-cv-v1 | assessment/proctoring-service | 0.5.0 | Face / eye tracking anomaly detection; runs on-prem on GPU nodes |
| essay-scoring-bert-v1 | analytics/nlp-service | 0.7.0 | BERT fine-tuned on academic writing for assisted essay grading |
| plagiarism-lsh-v1 | assessment/anti-cheat-service | 1.0.0 | LSH + MinHash fingerprinting for submission similarity |
