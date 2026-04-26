# safeguarding-alerts

Service in the **compliance** domain of ScholarPath.

**Language:** Go · **Port:** 50283

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/safeguarding-alerts/](../../../helm/charts/safeguarding-alerts/) — Helm chart
- [manifests/compliance/safeguarding-alerts/](../../../manifests/compliance/safeguarding-alerts/) — Raw K8s manifests
