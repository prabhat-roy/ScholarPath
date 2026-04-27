# anti-cheat

Service in the assessment domain of ScholarPath.

Language: Go Â· Port: 50124

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/anti-cheat/](../../../helm/charts/anti-cheat/) â€” Helm chart
- [manifests/assessment/anti-cheat/](../../../manifests/assessment/anti-cheat/) â€” Raw K8s manifests
