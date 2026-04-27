# e-book-service

Service in the library domain of ScholarPath.

Language: Go Â· Port: 50221

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/e-book-service/](../../../helm/charts/e-book-service/) â€” Helm chart
- [manifests/library/e-book-service/](../../../manifests/library/e-book-service/) â€” Raw K8s manifests
