# qti-parser

Service in the **assessment** domain of ScholarPath.

**Language:** Go · **Port:** 50122

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/qti-parser/](../../../helm/charts/qti-parser/) — Helm chart
- [manifests/assessment/qti-parser/](../../../manifests/assessment/qti-parser/) — Raw K8s manifests
