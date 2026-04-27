# curriculum-service

Service in the course domain of ScholarPath.

Language: Go Â· Port: 50060

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/curriculum-service/](../../../helm/charts/curriculum-service/) â€” Helm chart
- [manifests/course/curriculum-service/](../../../manifests/course/curriculum-service/) â€” Raw K8s manifests
