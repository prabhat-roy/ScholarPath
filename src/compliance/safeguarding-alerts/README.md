# safeguarding-alerts

Service in the compliance domain of ScholarPath.

Language: Go Â· Port: 50283

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/safeguarding-alerts/](../../../helm/charts/safeguarding-alerts/) â€” Helm chart
- [manifests/compliance/safeguarding-alerts/](../../../manifests/compliance/safeguarding-alerts/) â€” Raw K8s manifests
