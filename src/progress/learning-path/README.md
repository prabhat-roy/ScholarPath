# learning-path

Service in the **progress** domain of ScholarPath.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/learning-path/](../../../helm/charts/learning-path/) — Helm chart
- [manifests/progress/learning-path/](../../../manifests/progress/learning-path/) — Raw K8s manifests
