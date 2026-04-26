# admission-service

Service in the **enrolment** domain of ScholarPath.

**Language:** Go · **Port:** 50040

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/admission-service/](../../../helm/charts/admission-service/) — Helm chart
- [manifests/enrolment/admission-service/](../../../manifests/enrolment/admission-service/) — Raw K8s manifests
