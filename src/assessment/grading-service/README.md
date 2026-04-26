# grading-service

Service in the **assessment** domain of ScholarPath.

**Language:** Go · **Port:** 50123

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/grading-service/](../../../helm/charts/grading-service/) — Helm chart
- [manifests/assessment/grading-service/](../../../manifests/assessment/grading-service/) — Raw K8s manifests
