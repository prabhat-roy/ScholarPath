# leave-service

Service in the staff domain of ScholarPath.

Language: Go Â· Port: 50243

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/leave-service/](../../../helm/charts/leave-service/) â€” Helm chart
- [manifests/staff/leave-service/](../../../manifests/staff/leave-service/) â€” Raw K8s manifests
