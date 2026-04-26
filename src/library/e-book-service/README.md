# e-book-service

Service in the **library** domain of ScholarPath.

**Language:** Go · **Port:** 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/e-book-service/](../../../helm/charts/e-book-service/) — Helm chart
- [manifests/library/e-book-service/](../../../manifests/library/e-book-service/) — Raw K8s manifests
