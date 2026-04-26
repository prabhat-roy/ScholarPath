{{ config(materialized='view') }}
SELECT
  student_token,
  course_id,
  verb_id,
  object_id,
  toDateTime64(event_time, 3) AS event_time,
  duration_ms
FROM {{ source('xapi_raw', 'statements') }}
