# progress-tracking

Service in the **progress** domain of ScholarPath.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/progress-tracking/](../../../helm/charts/progress-tracking/) — Helm chart
- [manifests/progress/progress-tracking/](../../../manifests/progress/progress-tracking/) — Raw K8s manifests
