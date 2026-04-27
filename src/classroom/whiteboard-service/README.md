# whiteboard-service

Service in the classroom domain of ScholarPath.

Language: Go Â· Port: 50081

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/whiteboard-service/](../../../helm/charts/whiteboard-service/) â€” Helm chart
- [manifests/classroom/whiteboard-service/](../../../manifests/classroom/whiteboard-service/) â€” Raw K8s manifests
