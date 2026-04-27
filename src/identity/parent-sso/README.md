# parent-sso

Service in the identity domain of ScholarPath.

Language: Go Â· Port: 50022

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/parent-sso/](../../../helm/charts/parent-sso/) â€” Helm chart
- [manifests/identity/parent-sso/](../../../manifests/identity/parent-sso/) â€” Raw K8s manifests
