# parent-sso

Service in the **identity** domain of ScholarPath.

**Language:** Go · **Port:** 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/parent-sso/](../../../helm/charts/parent-sso/) — Helm chart
- [manifests/identity/parent-sso/](../../../manifests/identity/parent-sso/) — Raw K8s manifests
