# early-intervention

Service in the analytics domain of ScholarPath.

Language: Go Â· Port: 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/early-intervention/](../../../helm/charts/early-intervention/) â€” Helm chart
- [manifests/analytics/early-intervention/](../../../manifests/analytics/early-intervention/) â€” Raw K8s manifests
