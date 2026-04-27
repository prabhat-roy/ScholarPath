# credential-verifier

Service in the certifications domain of ScholarPath.

Language: Go Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/credential-verifier/](../../../helm/charts/credential-verifier/) â€” Helm chart
- [manifests/certifications/credential-verifier/](../../../manifests/certifications/credential-verifier/) â€” Raw K8s manifests
