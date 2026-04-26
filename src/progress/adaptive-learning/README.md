# adaptive-learning

Service in the **progress** domain of ScholarPath.

**Language:** Go · **Port:** 50163

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/adaptive-learning/](../../../helm/charts/adaptive-learning/) — Helm chart
- [manifests/progress/adaptive-learning/](../../../manifests/progress/adaptive-learning/) — Raw K8s manifests
