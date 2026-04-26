# exam-service

Service in the **assessment** domain of ScholarPath.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/exam-service/](../../../helm/charts/exam-service/) — Helm chart
- [manifests/assessment/exam-service/](../../../manifests/assessment/exam-service/) — Raw K8s manifests
