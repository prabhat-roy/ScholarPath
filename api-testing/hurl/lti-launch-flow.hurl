# LTI 1.3 launch flow with deliberately-invalid token (should be rejected).
POST https://lti.scholarpath.io/lti/login
Content-Type: application/x-www-form-urlencoded
[FormParams]
iss: https://platform.example.org
login_hint: student-123
target_link_uri: https://lti.scholarpath.io/lti/launch
HTTP 302
[Captures]
state: header "Location" regex "state=([^&]+)"

# Replay an expired id_token; the lti-launch-validation OPA policy must reject.
POST https://lti.scholarpath.io/lti/launch
Content-Type: application/x-www-form-urlencoded
[FormParams]
state: {{state}}
id_token: expired.jwt.token
HTTP 403
