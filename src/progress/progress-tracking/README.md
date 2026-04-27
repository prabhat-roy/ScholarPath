# progress-tracking

Service in the progress domain of ScholarPath.

Language: Go Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/progress-tracking/](../../../helm/charts/progress-tracking/) â€” Helm chart
- [manifests/progress/progress-tracking/](../../../manifests/progress/progress-tracking/) â€” Raw K8s manifests
