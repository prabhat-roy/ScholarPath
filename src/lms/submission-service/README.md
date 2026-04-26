# submission-service

Service in the **lms** domain of ScholarPath.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/submission-service/](../../../helm/charts/submission-service/) — Helm chart
- [manifests/lms/submission-service/](../../../manifests/lms/submission-service/) — Raw K8s manifests
