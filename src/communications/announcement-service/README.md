# announcement-service

Service in the communications domain of ScholarPath.

Language: Go Â· Port: 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/announcement-service/](../../../helm/charts/announcement-service/) â€” Helm chart
- [manifests/communications/announcement-service/](../../../manifests/communications/announcement-service/) â€” Raw K8s manifests
