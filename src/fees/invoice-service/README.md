# invoice-service

Service in the fees domain of ScholarPath.

Language: Go Â· Port: 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/invoice-service/](../../../helm/charts/invoice-service/) â€” Helm chart
- [manifests/fees/invoice-service/](../../../manifests/fees/invoice-service/) â€” Raw K8s manifests
