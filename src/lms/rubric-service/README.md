# rubric-service

Service in the **lms** domain of ScholarPath.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rubric-service/](../../../helm/charts/rubric-service/) — Helm chart
- [manifests/lms/rubric-service/](../../../manifests/lms/rubric-service/) — Raw K8s manifests
