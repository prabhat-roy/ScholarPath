# fee-service

Service in the fees domain of ScholarPath.

Language: Go Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/fee-service/](../../../helm/charts/fee-service/) â€” Helm chart
- [manifests/fees/fee-service/](../../../manifests/fees/fee-service/) â€” Raw K8s manifests
