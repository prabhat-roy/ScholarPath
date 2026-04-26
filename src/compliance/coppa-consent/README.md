# coppa-consent

Service in the **compliance** domain of ScholarPath.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/coppa-consent/](../../../helm/charts/coppa-consent/) — Helm chart
- [manifests/compliance/coppa-consent/](../../../manifests/compliance/coppa-consent/) — Raw K8s manifests
