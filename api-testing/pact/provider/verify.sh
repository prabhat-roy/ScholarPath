#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.scholarpath.internal \
  --provider scholarpath_identity_service \
  --provider-base-url http://identity-service.scholarpath.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
