# ferpa-service

Service in the compliance domain of ScholarPath.

Language: Go Â· Port: 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/ferpa-service/](../../../helm/charts/ferpa-service/) â€” Helm chart
- [manifests/compliance/ferpa-service/](../../../manifests/compliance/ferpa-service/) â€” Raw K8s manifests
