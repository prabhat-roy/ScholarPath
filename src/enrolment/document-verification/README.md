# document-verification

Service in the enrolment domain of ScholarPath.

Language: Go Â· Port: 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/document-verification/](../../../helm/charts/document-verification/) â€” Helm chart
- [manifests/enrolment/document-verification/](../../../manifests/enrolment/document-verification/) â€” Raw K8s manifests
