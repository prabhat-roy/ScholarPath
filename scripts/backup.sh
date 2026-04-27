#!/usr/bin/env bash
set -euo pipefail
NS="${1:-scholarpath}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "scholarpath-$TS" --include-namespaces "$NS" --wait
