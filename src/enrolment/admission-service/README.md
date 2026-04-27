# admission-service

Service in the enrolment domain of ScholarPath.

Language: Go Â· Port: 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/admission-service/](../../../helm/charts/admission-service/) â€” Helm chart
- [manifests/enrolment/admission-service/](../../../manifests/enrolment/admission-service/) â€” Raw K8s manifests
