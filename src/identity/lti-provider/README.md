# lti-provider

Service in the **identity** domain of ScholarPath.

**Language:** Go · **Port:** 50023

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lti-provider/](../../../helm/charts/lti-provider/) — Helm chart
- [manifests/identity/lti-provider/](../../../manifests/identity/lti-provider/) — Raw K8s manifests
