# rubric-service

Service in the lms domain of ScholarPath.

Language: Go Â· Port: 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rubric-service/](../../../helm/charts/rubric-service/) â€” Helm chart
- [manifests/lms/rubric-service/](../../../manifests/lms/rubric-service/) â€” Raw K8s manifests
