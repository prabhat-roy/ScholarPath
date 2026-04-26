package scholarpath.ferpa

import future.keywords.if
import future.keywords.in

# FERPA: access to a student's education records is only allowed if the
# requester is one of:
#   1. the student themselves
#   2. a parent / guardian (only when the student is < 18 OR consent is on file)
#   3. school officials with a legitimate educational interest in the record
#   4. a data flow with explicit student / parent disclosure consent
#
# input shape:
#   input.actor              { id, role, subject_kind }
#   input.target_student     { id, age, parent_subjects[] }
#   input.purpose            { code, scope[] }
#   input.consent_token      { ... } | null
#   input.school_official    { has_legitimate_interest, course_ids[] }
#   input.target_record_kind ("grade"|"attendance"|"discipline"|"directory"|"recording")

default allow := false

# 1. Student accessing their own record.
allow if {
    input.actor.role == "student"
    input.actor.id == input.target_student.id
}

# 2. Parent accessing a minor's record (under 18) OR with active consent.
allow if {
    input.actor.role in {"parent","guardian"}
    input.actor.id in input.target_student.parent_subjects
    input.target_student.age < 18
}

allow if {
    input.actor.role in {"parent","guardian"}
    input.actor.id in input.target_student.parent_subjects
    valid_disclosure_consent
}

# 3. School official with legitimate educational interest.
allow if {
    input.actor.role in {"teacher","counsellor","registrar","admin"}
    input.school_official.has_legitimate_interest == true
}

# 4. Disclosure consent token (eligible students 18+ can override; FERPA exemptions).
allow if { valid_disclosure_consent }

# Directory information is non-confidential UNLESS the student opted out.
allow if {
    input.target_record_kind == "directory"
    not input.target_student.directory_opt_out
}

# Discipline + recordings always require strict authorisation - deny by default.
deny[msg] if {
    input.target_record_kind in {"discipline","recording"}
    not allow
    msg := sprintf("FERPA: discipline/recording access denied for actor %q on student %q", [input.actor.id, input.target_student.id])
}

valid_disclosure_consent if {
    input.consent_token.scopes[_] == sprintf("ferpa.disclosure.%s", [input.target_record_kind])
    input.consent_token.expires_at > input.now
}
