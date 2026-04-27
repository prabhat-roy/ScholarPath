# exam-service

Service in the assessment domain of ScholarPath.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/exam-service/](../../../helm/charts/exam-service/) â€” Helm chart
- [manifests/assessment/exam-service/](../../../manifests/assessment/exam-service/) â€” Raw K8s manifests
