# messaging-service

Service in the communications domain of ScholarPath.

Language: Go Â· Port: 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/messaging-service/](../../../helm/charts/messaging-service/) â€” Helm chart
- [manifests/communications/messaging-service/](../../../manifests/communications/messaging-service/) â€” Raw K8s manifests
