# learning-analytics

Service in the analytics domain of ScholarPath.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/learning-analytics/](../../../helm/charts/learning-analytics/) â€” Helm chart
- [manifests/analytics/learning-analytics/](../../../manifests/analytics/learning-analytics/) â€” Raw K8s manifests
