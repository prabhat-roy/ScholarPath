package scholarpath.coppa

import future.keywords.if
import future.keywords.in

# COPPA: when the data subject is under 13 the operator MUST have verifiable
# parental consent BEFORE collecting / using / disclosing personal information.
# This policy is consulted by data-collection points (enrolment-service,
# analytics, content-recommendation, communications, lti-tool-provider).
#
# input shape:
#   input.student        { id, age }
#   input.action         ("collect"|"use"|"disclose"|"target_ad")
#   input.consent_token  { id, parent_subject, scopes[], expires_at } | null
#   input.purpose        ("learning"|"safety"|"system"|"marketing")
#   input.now            (epoch seconds)

default allow := false

# Students 13+ are out of COPPA scope.
allow if { input.student.age >= 13 }

# Behavioural advertising / marketing to under-13 is always prohibited.
deny[msg] if {
    input.student.age < 13
    input.action in {"target_ad"}
    msg := "COPPA: behavioural advertising to children under 13 is prohibited"
}

deny[msg] if {
    input.student.age < 13
    input.purpose == "marketing"
    msg := "COPPA: marketing use of children's data is prohibited"
}

# Allow when explicit, unexpired parental consent is presented.
allow if {
    input.student.age < 13
    input.consent_token.expires_at > input.now
    sprintf("coppa.%s", [input.action]) in input.consent_token.scopes
}

# School-purpose internal-operations exception: COPPA School Authorization
# permits ed-tech tools to operate with school-issued consent in lieu of parental
# consent, but ONLY for the educational purpose and with no behavioural ads.
allow if {
    input.student.age < 13
    input.purpose == "learning"
    input.consent_token.id == "school-authorization"
    input.consent_token.expires_at > input.now
}
