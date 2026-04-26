# Smoke test: every public surface returns /healthz=ok.
GET https://api.scholarpath.io/healthz
HTTP 200
[Asserts]
jsonpath "$.status" == "ok"

GET https://teacher.scholarpath.io/healthz
HTTP 200

GET https://parent.scholarpath.io/healthz
HTTP 200

GET https://lti.scholarpath.io/healthz
HTTP 200
