# proctoring-service

Service in the assessment domain of ScholarPath.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/proctoring-service/](../../../helm/charts/proctoring-service/) â€” Helm chart
- [manifests/assessment/proctoring-service/](../../../manifests/assessment/proctoring-service/) â€” Raw K8s manifests
