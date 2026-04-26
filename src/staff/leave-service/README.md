# leave-service

Service in the **staff** domain of ScholarPath.

**Language:** Go · **Port:** 50243

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/leave-service/](../../../helm/charts/leave-service/) — Helm chart
- [manifests/staff/leave-service/](../../../manifests/staff/leave-service/) — Raw K8s manifests
