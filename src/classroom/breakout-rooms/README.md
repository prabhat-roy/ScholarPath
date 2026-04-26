# breakout-rooms

Service in the **classroom** domain of ScholarPath.

**Language:** Go · **Port:** 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/breakout-rooms/](../../../helm/charts/breakout-rooms/) — Helm chart
- [manifests/classroom/breakout-rooms/](../../../manifests/classroom/breakout-rooms/) — Raw K8s manifests
