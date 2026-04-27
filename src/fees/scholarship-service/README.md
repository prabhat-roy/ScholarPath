# scholarship-service

Service in the fees domain of ScholarPath.

Language: Go Â· Port: 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scholarship-service/](../../../helm/charts/scholarship-service/) â€” Helm chart
- [manifests/fees/scholarship-service/](../../../manifests/fees/scholarship-service/) â€” Raw K8s manifests
