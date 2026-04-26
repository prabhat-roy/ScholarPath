# credential-verifier

Service in the **certifications** domain of ScholarPath.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/credential-verifier/](../../../helm/charts/credential-verifier/) — Helm chart
- [manifests/certifications/credential-verifier/](../../../manifests/certifications/credential-verifier/) — Raw K8s manifests
