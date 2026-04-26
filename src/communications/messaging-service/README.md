# messaging-service

Service in the **communications** domain of ScholarPath.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/messaging-service/](../../../helm/charts/messaging-service/) — Helm chart
- [manifests/communications/messaging-service/](../../../manifests/communications/messaging-service/) — Raw K8s manifests
