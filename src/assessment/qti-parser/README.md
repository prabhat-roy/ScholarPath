# qti-parser

Service in the assessment domain of ScholarPath.

Language: Go Â· Port: 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/qti-parser/](../../../helm/charts/qti-parser/) â€” Helm chart
- [manifests/assessment/qti-parser/](../../../manifests/assessment/qti-parser/) â€” Raw K8s manifests
