# attendance-service

Service in the classroom domain of ScholarPath.

Language: Go Â· Port: 50083

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/attendance-service/](../../../helm/charts/attendance-service/) â€” Helm chart
- [manifests/classroom/attendance-service/](../../../manifests/classroom/attendance-service/) â€” Raw K8s manifests
