# parent-portal

Service in the **communications** domain of ScholarPath.

**Language:** Go · **Port:** 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/parent-portal/](../../../helm/charts/parent-portal/) — Helm chart
- [manifests/communications/parent-portal/](../../../manifests/communications/parent-portal/) — Raw K8s manifests
