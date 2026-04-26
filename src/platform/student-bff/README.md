# student-bff

BFF for student portal (Next.js)

**Domain:** `platform` - **Language:** go - **Port:** 50001

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` - health check, returns `{ "status": "ok" }`

## See also

- [proto/platform/student-bff.proto](../../../proto/platform/student-bff.proto) - gRPC contract
- [helm/charts/student-bff/](../../../helm/charts/student-bff/) - Helm chart
- [../README.md](../README.md) - domain overview
