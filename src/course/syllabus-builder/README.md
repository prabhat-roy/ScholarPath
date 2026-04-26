# syllabus-builder

Service in the **course** domain of ScholarPath.

**Language:** Go · **Port:** 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/syllabus-builder/](../../../helm/charts/syllabus-builder/) — Helm chart
- [manifests/course/syllabus-builder/](../../../manifests/course/syllabus-builder/) — Raw K8s manifests
