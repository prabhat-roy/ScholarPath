# parent-portal

Service in the communications domain of ScholarPath.

Language: Go Â· Port: 50182

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/parent-portal/](../../../helm/charts/parent-portal/) â€” Helm chart
- [manifests/communications/parent-portal/](../../../manifests/communications/parent-portal/) â€” Raw K8s manifests
