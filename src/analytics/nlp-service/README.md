# nlp-service

Service in the analytics domain of ScholarPath.

Language: Go Â· Port: 50263

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/nlp-service/](../../../helm/charts/nlp-service/) â€” Helm chart
- [manifests/analytics/nlp-service/](../../../manifests/analytics/nlp-service/) â€” Raw K8s manifests
