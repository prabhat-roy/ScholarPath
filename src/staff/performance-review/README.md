# performance-review

Service in the staff domain of ScholarPath.

Language: Go Â· Port: 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/performance-review/](../../../helm/charts/performance-review/) â€” Helm chart
- [manifests/staff/performance-review/](../../../manifests/staff/performance-review/) â€” Raw K8s manifests
