# Default policy for ScholarPath application services.
# Each service consumes its own KV path; Postgres / Redis credentials are dynamic.
path "scholarpath/data/{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}/*" {
  capabilities = ["read"]
}
path "database/creds/scholarpath-{{identity.entity.aliases.auth_kubernetes_*.metadata.service_account_name}}" {
  capabilities = ["read"]
}
path "transit/encrypt/scholarpath" { capabilities = ["update"] }
path "transit/decrypt/scholarpath" { capabilities = ["update"] }
# JWKS used for LTI 1.3 platform / tool key signing
path "scholarpath/data/lti/jwks/*" { capabilities = ["read"] }
