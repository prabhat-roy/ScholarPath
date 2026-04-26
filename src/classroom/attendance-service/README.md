# attendance-service

Service in the **classroom** domain of ScholarPath.

**Language:** Go · **Port:** 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/attendance-service/](../../../helm/charts/attendance-service/) — Helm chart
- [manifests/classroom/attendance-service/](../../../manifests/classroom/attendance-service/) — Raw K8s manifests
