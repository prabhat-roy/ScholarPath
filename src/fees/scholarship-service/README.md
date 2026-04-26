# scholarship-service

Service in the **fees** domain of ScholarPath.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scholarship-service/](../../../helm/charts/scholarship-service/) — Helm chart
- [manifests/fees/scholarship-service/](../../../manifests/fees/scholarship-service/) — Raw K8s manifests
