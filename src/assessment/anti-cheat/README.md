# anti-cheat

Service in the **assessment** domain of ScholarPath.

**Language:** Go · **Port:** 50124

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/anti-cheat/](../../../helm/charts/anti-cheat/) — Helm chart
- [manifests/assessment/anti-cheat/](../../../manifests/assessment/anti-cheat/) — Raw K8s manifests
