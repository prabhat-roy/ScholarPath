# recommendation-service

Service in the **progress** domain of ScholarPath.

**Language:** Go · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/recommendation-service/](../../../helm/charts/recommendation-service/) — Helm chart
- [manifests/progress/recommendation-service/](../../../manifests/progress/recommendation-service/) — Raw K8s manifests
