CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE course (
    id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code          TEXT NOT NULL UNIQUE,
    title         TEXT NOT NULL,
    description   TEXT,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE assignment (
    id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    course_id     UUID NOT NULL REFERENCES course(id),
    title         TEXT NOT NULL,
    due_at        TIMESTAMPTZ NOT NULL,
    max_score     NUMERIC(8,2) NOT NULL,
    rubric_id     UUID,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX assignment_course ON assignment(course_id);

-- Every grade change writes an audit row with grader identity + reason (FERPA).
CREATE TABLE grade_audit (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    submission_id   UUID NOT NULL,
    student_token   TEXT NOT NULL,
    grader_id       TEXT NOT NULL,
    previous_score  NUMERIC(8,2),
    new_score       NUMERIC(8,2) NOT NULL,
    reason          TEXT NOT NULL,
    changed_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX grade_audit_submission ON grade_audit(submission_id);
CREATE INDEX grade_audit_student ON grade_audit(student_token);
