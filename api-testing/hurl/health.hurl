# Health check for all critical services
GET https://scholarpath.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://api.scholarpath.internal/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"
