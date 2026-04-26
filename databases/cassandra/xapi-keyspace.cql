-- xAPI / SCORM event archive keyspace. Every learner interaction is stored
-- here keyed by student_token and event_time for fast time-range scans.
CREATE KEYSPACE IF NOT EXISTS scholarpath_xapi
WITH REPLICATION = { 'class': 'NetworkTopologyStrategy', 'dc1': 3 };

CREATE TABLE scholarpath_xapi.statement (
    student_token   text,
    event_time      timestamp,
    statement_id    uuid,
    verb_id         text,
    object_id       text,
    course_id       text,
    raw             text,                  -- JSON-encoded full xAPI statement
    PRIMARY KEY ((student_token), event_time, statement_id)
) WITH CLUSTERING ORDER BY (event_time DESC, statement_id ASC)
  AND default_time_to_live = 220752000;    -- 7y for FERPA audit retention

CREATE TABLE scholarpath_xapi.scorm_attempt (
    student_token   text,
    course_id       text,
    attempt_id      uuid,
    started_at      timestamp,
    completed_at    timestamp,
    success_status  text,
    completion_status text,
    score_scaled    double,
    cmi_blob        text,                  -- compressed CMI 2004 data model
    PRIMARY KEY ((student_token, course_id), started_at, attempt_id)
) WITH CLUSTERING ORDER BY (started_at DESC, attempt_id ASC);
