CREATE DATABASE IF NOT EXISTS scholarpath_analytics;

-- Engagement events stream (xAPI verbs aggregated for dashboards).
CREATE TABLE IF NOT EXISTS scholarpath_analytics.engagement_event (
    event_time      DateTime64(3),
    student_token   String,
    course_id       LowCardinality(String),
    verb_id         LowCardinality(String),
    object_kind     LowCardinality(String),
    duration_ms     UInt32,
    correlation_id  String
) ENGINE = MergeTree
ORDER BY (course_id, event_time)
PARTITION BY toYYYYMM(event_time)
TTL event_time + INTERVAL 7 YEAR;

-- Daily completion roll-ups for at-risk / early-intervention models.
CREATE TABLE IF NOT EXISTS scholarpath_analytics.daily_completion (
    day             Date,
    course_id       LowCardinality(String),
    student_token   String,
    lessons_done    UInt16,
    quizzes_taken   UInt16,
    avg_score       Float32,
    minutes_active  UInt32
) ENGINE = SummingMergeTree
ORDER BY (course_id, student_token, day)
PARTITION BY toYYYYMM(day);
