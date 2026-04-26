# nlp-service

Service in the **analytics** domain of ScholarPath.

**Language:** Go · **Port:** 50263

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/nlp-service/](../../../helm/charts/nlp-service/) — Helm chart
- [manifests/analytics/nlp-service/](../../../manifests/analytics/nlp-service/) — Raw K8s manifests
