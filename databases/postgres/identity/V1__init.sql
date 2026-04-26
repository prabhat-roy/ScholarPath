CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Student profile - PII is tokenised; Vault holds the reverse mapping.
CREATE TABLE student_profile (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    student_token   TEXT NOT NULL UNIQUE,
    given_name      TEXT NOT NULL,
    family_name     TEXT NOT NULL,
    dob             DATE NOT NULL,
    grade_level     SMALLINT,
    is_minor        BOOLEAN GENERATED ALWAYS AS (EXTRACT(YEAR FROM AGE(dob)) < 13) STORED,
    coppa_consent_id TEXT,                 -- references compliance.coppa_consent
    created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX student_profile_token ON student_profile (student_token);
CREATE INDEX student_profile_minor ON student_profile (is_minor) WHERE is_minor;
