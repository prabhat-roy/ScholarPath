# polling-service

Service in the classroom domain of ScholarPath.

Language: Go Â· Port: 50082

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/polling-service/](../../../helm/charts/polling-service/) â€” Helm chart
- [manifests/classroom/polling-service/](../../../manifests/classroom/polling-service/) â€” Raw K8s manifests
