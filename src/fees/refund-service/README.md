# refund-service

Service in the **fees** domain of ScholarPath.

**Language:** Go · **Port:** 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/refund-service/](../../../helm/charts/refund-service/) — Helm chart
- [manifests/fees/refund-service/](../../../manifests/fees/refund-service/) — Raw K8s manifests
