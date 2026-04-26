# polling-service

Service in the **classroom** domain of ScholarPath.

**Language:** Go · **Port:** 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/polling-service/](../../../helm/charts/polling-service/) — Helm chart
- [manifests/classroom/polling-service/](../../../manifests/classroom/polling-service/) — Raw K8s manifests
