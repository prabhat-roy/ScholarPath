# whiteboard-service

Service in the **classroom** domain of ScholarPath.

**Language:** Go · **Port:** 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/whiteboard-service/](../../../helm/charts/whiteboard-service/) — Helm chart
- [manifests/classroom/whiteboard-service/](../../../manifests/classroom/whiteboard-service/) — Raw K8s manifests
