# content-recommendation

Service in the analytics domain of ScholarPath.

Language: Go Â· Port: 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/content-recommendation/](../../../helm/charts/content-recommendation/) â€” Helm chart
- [manifests/analytics/content-recommendation/](../../../manifests/analytics/content-recommendation/) â€” Raw K8s manifests
