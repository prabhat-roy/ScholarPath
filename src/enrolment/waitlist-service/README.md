# waitlist-service

Service in the enrolment domain of ScholarPath.

Language: Go Â· Port: 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/waitlist-service/](../../../helm/charts/waitlist-service/) â€” Helm chart
- [manifests/enrolment/waitlist-service/](../../../manifests/enrolment/waitlist-service/) â€” Raw K8s manifests
