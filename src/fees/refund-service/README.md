# refund-service

Service in the fees domain of ScholarPath.

Language: Go Â· Port: 50203

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/refund-service/](../../../helm/charts/refund-service/) â€” Helm chart
- [manifests/fees/refund-service/](../../../manifests/fees/refund-service/) â€” Raw K8s manifests
