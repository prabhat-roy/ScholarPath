# waitlist-service

Service in the **enrolment** domain of ScholarPath.

**Language:** Go · **Port:** 50041

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/waitlist-service/](../../../helm/charts/waitlist-service/) — Helm chart
- [manifests/enrolment/waitlist-service/](../../../manifests/enrolment/waitlist-service/) — Raw K8s manifests
