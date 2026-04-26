# content-library

Service in the **course** domain of ScholarPath.

**Language:** Go · **Port:** 50061

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/content-library/](../../../helm/charts/content-library/) — Helm chart
- [manifests/course/content-library/](../../../manifests/course/content-library/) — Raw K8s manifests
