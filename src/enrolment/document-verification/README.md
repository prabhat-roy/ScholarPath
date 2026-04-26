# document-verification

Service in the **enrolment** domain of ScholarPath.

**Language:** Go · **Port:** 50042

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/document-verification/](../../../helm/charts/document-verification/) — Helm chart
- [manifests/enrolment/document-verification/](../../../manifests/enrolment/document-verification/) — Raw K8s manifests
