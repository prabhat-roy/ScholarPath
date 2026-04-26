# badge-service

Service in the **certifications** domain of ScholarPath.

**Language:** Go · **Port:** 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/badge-service/](../../../helm/charts/badge-service/) — Helm chart
- [manifests/certifications/badge-service/](../../../manifests/certifications/badge-service/) — Raw K8s manifests
