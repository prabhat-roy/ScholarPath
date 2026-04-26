# early-intervention

Service in the **analytics** domain of ScholarPath.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/early-intervention/](../../../helm/charts/early-intervention/) — Helm chart
- [manifests/analytics/early-intervention/](../../../manifests/analytics/early-intervention/) — Raw K8s manifests
