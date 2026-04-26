# invoice-service

Service in the **fees** domain of ScholarPath.

**Language:** Go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/invoice-service/](../../../helm/charts/invoice-service/) — Helm chart
- [manifests/fees/invoice-service/](../../../manifests/fees/invoice-service/) — Raw K8s manifests
