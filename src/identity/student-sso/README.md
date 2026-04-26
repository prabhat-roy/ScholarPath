# student-sso

Service in the **identity** domain of ScholarPath.

**Language:** Go · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/student-sso/](../../../helm/charts/student-sso/) — Helm chart
- [manifests/identity/student-sso/](../../../manifests/identity/student-sso/) — Raw K8s manifests
