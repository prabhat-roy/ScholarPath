# Events - ScholarPath

Avro schemas for cross-domain events published to Kafka. One file per event,
named `<domain>.<entity>.<verb>.avsc`. Schema-registry-managed; **never break
forward compatibility** - evolve fields with defaults only.

## Conventions

- Topic naming: `<domain>.<entity>.<event>` - e.g. `lms.assignment.submitted`
- Namespace: `io.scholarpath.<domain>.events`
- Every event includes:
  - `event_id` (UUID)
  - `event_time` (millis since epoch)
  - `actor` (the student / teacher / parent who triggered the event)
  - `correlation_id` (propagated across all related events for tracing)
- Student PII (student_id, parent_email, dob) is **always** tokenised - schemas
  reference the tokenised form via the shared `StudentRef` record.
- xAPI statements ride on Kafka under `xapi.statement.recorded` and are tee'd
  to the Cassandra-backed LRS for archival.

## Anchor events (must remain stable)

| Topic | Producer |
|---|---|
| `lms.assignment.submitted` | lms/submission-service |
| `assessment.exam.completed` | assessment/exam-service |
| `enrolment.student.enrolled` | enrolment/enrolment-service |
| `progress.milestone.achieved` | progress/progress-tracking |
| `certifications.certificate.issued` | certifications/certificate-service |
| `compliance.audit.recorded` | compliance/audit-trail |
| `xapi.statement.recorded` | analytics/xapi-lrs |
