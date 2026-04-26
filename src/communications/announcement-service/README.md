# announcement-service

Service in the **communications** domain of ScholarPath.

**Language:** Go · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/announcement-service/](../../../helm/charts/announcement-service/) — Helm chart
- [manifests/communications/announcement-service/](../../../manifests/communications/announcement-service/) — Raw K8s manifests
