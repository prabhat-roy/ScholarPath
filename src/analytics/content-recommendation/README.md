# content-recommendation

Service in the **analytics** domain of ScholarPath.

**Language:** Go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/content-recommendation/](../../../helm/charts/content-recommendation/) — Helm chart
- [manifests/analytics/content-recommendation/](../../../manifests/analytics/content-recommendation/) — Raw K8s manifests
