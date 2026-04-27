# syllabus-builder

Service in the course domain of ScholarPath.

Language: Go Â· Port: 50062

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/syllabus-builder/](../../../helm/charts/syllabus-builder/) â€” Helm chart
- [manifests/course/syllabus-builder/](../../../manifests/course/syllabus-builder/) â€” Raw K8s manifests
