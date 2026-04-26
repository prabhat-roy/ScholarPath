# proctoring-service

Service in the **assessment** domain of ScholarPath.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/proctoring-service/](../../../helm/charts/proctoring-service/) — Helm chart
- [manifests/assessment/proctoring-service/](../../../manifests/assessment/proctoring-service/) — Raw K8s manifests
