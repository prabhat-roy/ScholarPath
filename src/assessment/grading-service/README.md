# grading-service

Service in the assessment domain of ScholarPath.

Language: Go Â· Port: 50123

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/grading-service/](../../../helm/charts/grading-service/) â€” Helm chart
- [manifests/assessment/grading-service/](../../../manifests/assessment/grading-service/) â€” Raw K8s manifests
