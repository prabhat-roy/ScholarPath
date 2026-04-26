# media-streaming

Service in the **library** domain of ScholarPath.

**Language:** Go · **Port:** 50223

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/media-streaming/](../../../helm/charts/media-streaming/) — Helm chart
- [manifests/library/media-streaming/](../../../manifests/library/media-streaming/) — Raw K8s manifests
