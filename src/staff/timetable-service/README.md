# timetable-service

Service in the **staff** domain of ScholarPath.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/timetable-service/](../../../helm/charts/timetable-service/) — Helm chart
- [manifests/staff/timetable-service/](../../../manifests/staff/timetable-service/) — Raw K8s manifests
