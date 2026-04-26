# curriculum-service

Service in the **course** domain of ScholarPath.

**Language:** Go · **Port:** 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/curriculum-service/](../../../helm/charts/curriculum-service/) — Helm chart
- [manifests/course/curriculum-service/](../../../manifests/course/curriculum-service/) — Raw K8s manifests
