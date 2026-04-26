# platform - ScholarPath

Edge + gateway services. The platform domain houses public ingress, BFFs, the
GraphQL federation gateway, and IMS LTI 1.3 platform-side endpoints.

| Service | Lang | Port | Description |
|---|---|---|---|
| api-gateway | go | 50000 | HTTP+gRPC ingress, LTI 1.3, OAuth2, rate limiting, WAF |
| student-bff | go | 50001 | BFF for student portal (Next.js) |
| teacher-bff | go | 50002 | BFF for teacher dashboard (React) |
| parent-bff | go | 50003 | BFF for parent portal (React) |
| admin-bff | go | 50004 | BFF for admin console (Angular) |
| mobile-bff | go | 50005 | BFF for mobile app (React Native) |
| graphql-gateway | go | 50006 | Federated GraphQL across all services |
| lti-tool-provider | go | 50007 | IMS LTI 1.3 tool provider |
| lti-tool-consumer | go | 50008 | IMS LTI 1.3 consumer for external tool launches |
| webhook-router | go | 50009 | Outbound webhook fan-out |
| feature-flag-proxy | go | 50010 | Unleash proxy for client SDKs |
| config-service | go | 50011 | Centralised dynamic configuration |
| service-registry | go | 50012 | Internal service discovery + metadata |
| rate-limit-service | go | 50013 | Distributed token bucket rate limiter |

> Each service has its own folder with `Dockerfile`, `Makefile`, `.env.example`, `README.md`,
> and a language-specific entry file. See [../../proto/platform/](../../proto/platform/)
> for the gRPC contracts.
