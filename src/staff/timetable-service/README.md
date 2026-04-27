# timetable-service

Service in the staff domain of ScholarPath.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/timetable-service/](../../../helm/charts/timetable-service/) â€” Helm chart
- [manifests/staff/timetable-service/](../../../manifests/staff/timetable-service/) â€” Raw K8s manifests
