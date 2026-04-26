db.createCollection("submission", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["submission_id", "assignment_id", "student_token", "submitted_at", "status"],
      properties: {
        submission_id: { bsonType: "string" },
        assignment_id: { bsonType: "string" },
        student_token: { bsonType: "string" },
        submitted_at:  { bsonType: "date" },
        status:        { enum: ["draft","submitted","late","graded","returned","resubmitted"] },
        attempt:       { bsonType: "int", minimum: 1 },
        content_uri:   { bsonType: "string" },
        plagiarism_score: { bsonType: "double", minimum: 0, maximum: 1 }
      }
    }
  }
});
db.submission.createIndex({ submission_id: 1 }, { unique: true });
db.submission.createIndex({ assignment_id: 1, student_token: 1 });
db.submission.createIndex({ status: 1, submitted_at: -1 });
