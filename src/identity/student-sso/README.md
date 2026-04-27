# student-sso

Service in the identity domain of ScholarPath.

Language: Go Â· Port: 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/student-sso/](../../../helm/charts/student-sso/) â€” Helm chart
- [manifests/identity/student-sso/](../../../manifests/identity/student-sso/) â€” Raw K8s manifests
