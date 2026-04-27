# breakout-rooms

Service in the classroom domain of ScholarPath.

Language: Go Â· Port: 50080

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/breakout-rooms/](../../../helm/charts/breakout-rooms/) â€” Helm chart
- [manifests/classroom/breakout-rooms/](../../../manifests/classroom/breakout-rooms/) â€” Raw K8s manifests
