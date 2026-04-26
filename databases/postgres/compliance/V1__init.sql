CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- COPPA parental consent ledger.
CREATE TABLE coppa_consent (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    student_token   TEXT NOT NULL,
    parent_subject  TEXT NOT NULL,
    scopes          TEXT[] NOT NULL,
    issued_at       TIMESTAMPTZ NOT NULL DEFAULT now(),
    expires_at      TIMESTAMPTZ NOT NULL,
    revoked_at      TIMESTAMPTZ
);
CREATE INDEX coppa_consent_student ON coppa_consent(student_token);
CREATE INDEX coppa_consent_active  ON coppa_consent(student_token) WHERE revoked_at IS NULL;

-- FERPA disclosure ledger - every release of student records is recorded here.
CREATE TABLE ferpa_disclosure (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    student_token   TEXT NOT NULL,
    record_kind     TEXT NOT NULL,
    disclosed_to    TEXT NOT NULL,
    purpose         TEXT NOT NULL,
    disclosed_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX ferpa_disclosure_student ON ferpa_disclosure(student_token);
