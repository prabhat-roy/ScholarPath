# payroll-service

Service in the staff domain of ScholarPath.

Language: Go Â· Port: 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payroll-service/](../../../helm/charts/payroll-service/) â€” Helm chart
- [manifests/staff/payroll-service/](../../../manifests/staff/payroll-service/) â€” Raw K8s manifests
