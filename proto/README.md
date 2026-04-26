# Proto - ScholarPath

Single source of truth for service contracts. Every gRPC service used in the
platform has its `.proto` definition here, organised by business domain.

## Layout

```
proto/
|-- buf.yaml          <- Buf module config
|-- buf.gen.yaml      <- Codegen targets (Go, Java, Python, Kotlin)
|-- common/           <- Shared types (StudentRef, LtiLaunch, XApiStatement, Pagination)
`-- <domain>/
    `-- <service>.proto
```

## Codegen

```bash
make proto    # runs `buf generate` from repo root
```

Generated bindings land in `proto/gen/{go,java,python,kotlin}/...`. Each service imports
the bindings from there.

## Conventions

- One `.proto` file per service, containing one `service` and its messages
- Package: `scholarpath.<domain>.v1`
- Versioning: `v1`, `v2` - break only via new package
- Common types live in `common/` and are imported via `scholarpath.common.v1`
- LTI 1.3 launches use a shared `LtiLaunch` message in `common/lti.proto`
- xAPI statements use a shared `XApiStatement` message in `common/xapi.proto`
- Student PII references use `StudentRef` (tokenised) for FERPA compliance
