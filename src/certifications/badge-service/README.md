# badge-service

Service in the certifications domain of ScholarPath.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/badge-service/](../../../helm/charts/badge-service/) â€” Helm chart
- [manifests/certifications/badge-service/](../../../manifests/certifications/badge-service/) â€” Raw K8s manifests
