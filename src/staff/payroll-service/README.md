# payroll-service

Service in the **staff** domain of ScholarPath.

**Language:** Go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/payroll-service/](../../../helm/charts/payroll-service/) — Helm chart
- [manifests/staff/payroll-service/](../../../manifests/staff/payroll-service/) — Raw K8s manifests
