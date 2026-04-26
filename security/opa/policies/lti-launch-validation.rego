package scholarpath.lti

import future.keywords.if
import future.keywords.in

# IMS LTI 1.3 launch validation. Enforced at the lti-tool-provider before any
# tool launch is honoured. Rejects launches missing required claims, with
# unregistered deployments, expired tokens, or unaccepted roles.
#
# input shape:
#   input.id_token            { iss, aud, exp, nonce, "https://purl.imsglobal.org/spec/lti/claim/deployment_id", "...message_type", "...version", "...resource_link", "...roles", "...context" }
#   input.now                 (epoch seconds)
#   input.registered_clients  { <iss>: { aud[], deployment_ids[] } }
#   input.accepted_roles      ["Learner","Instructor","Mentor","Administrator"]

default allow := false

deployment_id := input.id_token["https://purl.imsglobal.org/spec/lti/claim/deployment_id"]
message_type  := input.id_token["https://purl.imsglobal.org/spec/lti/claim/message_type"]
lti_version   := input.id_token["https://purl.imsglobal.org/spec/lti/claim/version"]
resource_link := input.id_token["https://purl.imsglobal.org/spec/lti/claim/resource_link"]
roles         := input.id_token["https://purl.imsglobal.org/spec/lti/claim/roles"]

allow if { count(deny) == 0 }

deny[msg] if {
    not input.id_token.iss
    msg := "LTI: missing iss"
}

deny[msg] if {
    not input.registered_clients[input.id_token.iss]
    msg := sprintf("LTI: issuer %q is not registered", [input.id_token.iss])
}

deny[msg] if {
    aud := input.id_token.aud
    not aud in input.registered_clients[input.id_token.iss].aud
    msg := sprintf("LTI: aud %q not in registered list", [aud])
}

deny[msg] if {
    not deployment_id in input.registered_clients[input.id_token.iss].deployment_ids
    msg := sprintf("LTI: deployment_id %q is not registered for issuer", [deployment_id])
}

deny[msg] if {
    input.id_token.exp < input.now
    msg := "LTI: id_token expired"
}

deny[msg] if {
    not input.id_token.nonce
    msg := "LTI: missing nonce"
}

deny[msg] if {
    lti_version != "1.3.0"
    msg := sprintf("LTI: unsupported version %q (require 1.3.0)", [lti_version])
}

deny[msg] if {
    message_type != "LtiResourceLinkRequest"
    message_type != "LtiDeepLinkingRequest"
    msg := sprintf("LTI: unsupported message_type %q", [message_type])
}

deny[msg] if {
    not resource_link.id
    msg := "LTI: missing resource_link.id"
}

deny[msg] if {
    count([r | r := roles[_]; some accepted; accepted := input.accepted_roles[_]; contains(r, accepted)]) == 0
    msg := "LTI: no accepted role found in claim"
}
