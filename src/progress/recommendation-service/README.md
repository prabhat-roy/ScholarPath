# recommendation-service

Service in the progress domain of ScholarPath.

Language: Go Â· Port: 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/recommendation-service/](../../../helm/charts/recommendation-service/) â€” Helm chart
- [manifests/progress/recommendation-service/](../../../manifests/progress/recommendation-service/) â€” Raw K8s manifests
