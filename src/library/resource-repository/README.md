# resource-repository

Service in the **library** domain of ScholarPath.

**Language:** Go · **Port:** 50222

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/resource-repository/](../../../helm/charts/resource-repository/) — Helm chart
- [manifests/library/resource-repository/](../../../manifests/library/resource-repository/) — Raw K8s manifests
