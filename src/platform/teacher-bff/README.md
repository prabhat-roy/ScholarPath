# teacher-bff

BFF for teacher dashboard (React)

**Domain:** `platform` - **Language:** go - **Port:** 50002

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` - health check, returns `{ "status": "ok" }`

## See also

- [proto/platform/teacher-bff.proto](../../../proto/platform/teacher-bff.proto) - gRPC contract
- [helm/charts/teacher-bff/](../../../helm/charts/teacher-bff/) - Helm chart
- [../README.md](../README.md) - domain overview
