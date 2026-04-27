# lti-provider

Service in the identity domain of ScholarPath.

Language: Go Â· Port: 50023

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lti-provider/](../../../helm/charts/lti-provider/) â€” Helm chart
- [manifests/identity/lti-provider/](../../../manifests/identity/lti-provider/) â€” Raw K8s manifests
