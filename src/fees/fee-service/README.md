# fee-service

Service in the **fees** domain of ScholarPath.

**Language:** Go · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fee-service/](../../../helm/charts/fee-service/) — Helm chart
- [manifests/fees/fee-service/](../../../manifests/fees/fee-service/) — Raw K8s manifests
