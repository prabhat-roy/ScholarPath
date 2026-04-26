# ferpa-service

Service in the **compliance** domain of ScholarPath.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ferpa-service/](../../../helm/charts/ferpa-service/) — Helm chart
- [manifests/compliance/ferpa-service/](../../../manifests/compliance/ferpa-service/) — Raw K8s manifests
