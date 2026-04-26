# An under-13 enrolment must be blocked until parental consent is captured.
POST https://api.scholarpath.io/v1/enrolment
Content-Type: application/json
Authorization: Bearer {{minor_student_token}}
{ "course_id": "course-1" }
HTTP 403
[Asserts]
jsonpath "$.code" == "COPPA_CONSENT_REQUIRED"

# After parent grants consent, the same call succeeds.
POST https://api.scholarpath.io/v1/coppa/consent
Content-Type: application/json
Authorization: Bearer {{parent_token}}
{ "student_token": "{{minor_student_token}}", "scopes": ["coppa.collect","coppa.use"] }
HTTP 201
[Captures]
consent_id: jsonpath "$.id"

POST https://api.scholarpath.io/v1/enrolment
Content-Type: application/json
Authorization: Bearer {{minor_student_token}}
X-COPPA-Consent: {{consent_id}}
{ "course_id": "course-1" }
HTTP 201
