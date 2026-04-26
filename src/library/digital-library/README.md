# digital-library

Service in the **library** domain of ScholarPath.

**Language:** Go · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/digital-library/](../../../helm/charts/digital-library/) — Helm chart
- [manifests/library/digital-library/](../../../manifests/library/digital-library/) — Raw K8s manifests
