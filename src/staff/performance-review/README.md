# performance-review

Service in the **staff** domain of ScholarPath.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/performance-review/](../../../helm/charts/performance-review/) — Helm chart
- [manifests/staff/performance-review/](../../../manifests/staff/performance-review/) — Raw K8s manifests
