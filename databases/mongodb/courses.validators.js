db.createCollection("course_content", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["course_id","unit_id","kind","title","created_at"],
      properties: {
        course_id:  { bsonType: "string" },
        unit_id:    { bsonType: "string" },
        kind:       { enum: ["lesson","video","scorm","reading","quiz","external_lti"] },
        title:      { bsonType: "string" },
        body:       { bsonType: "string" },
        scorm_uri:  { bsonType: "string" },
        lti_resource_link_id: { bsonType: "string" },
        a11y:       { bsonType: "object", properties: { caption_url: { bsonType: "string" }, alt_text: { bsonType: "string" } } },
        created_at: { bsonType: "date" }
      }
    }
  }
});
db.course_content.createIndex({ course_id: 1, unit_id: 1 });
db.course_content.createIndex({ kind: 1 });
