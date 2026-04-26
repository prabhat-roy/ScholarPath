# learning-analytics

Service in the **analytics** domain of ScholarPath.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/learning-analytics/](../../../helm/charts/learning-analytics/) — Helm chart
- [manifests/analytics/learning-analytics/](../../../manifests/analytics/learning-analytics/) — Raw K8s manifests
