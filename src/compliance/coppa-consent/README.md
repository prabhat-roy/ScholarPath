# coppa-consent

Service in the compliance domain of ScholarPath.

Language: Go Â· Port: 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/coppa-consent/](../../../helm/charts/coppa-consent/) â€” Helm chart
- [manifests/compliance/coppa-consent/](../../../manifests/compliance/coppa-consent/) â€” Raw K8s manifests
