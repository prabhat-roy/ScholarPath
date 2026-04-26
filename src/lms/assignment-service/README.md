# assignment-service

Service in the **lms** domain of ScholarPath.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/assignment-service/](../../../helm/charts/assignment-service/) — Helm chart
- [manifests/lms/assignment-service/](../../../manifests/lms/assignment-service/) — Raw K8s manifests
