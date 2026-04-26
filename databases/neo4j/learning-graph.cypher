// Adaptive learning knowledge graph - skills, prerequisites, mastery edges.
// Recommendation + learning-path services traverse this graph to personalise routes.

CREATE CONSTRAINT FOR (s:Skill)        REQUIRE s.code IS UNIQUE;
CREATE CONSTRAINT FOR (c:Course)       REQUIRE c.id IS UNIQUE;
CREATE CONSTRAINT FOR (u:Unit)         REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT FOR (l:Lesson)       REQUIRE l.id IS UNIQUE;
CREATE CONSTRAINT FOR (st:Student)     REQUIRE st.token IS UNIQUE;
CREATE CONSTRAINT FOR (lo:LearningOutcome) REQUIRE lo.code IS UNIQUE;

// Schema relationships:
//   (Course)-[:HAS_UNIT]->(Unit)-[:HAS_LESSON]->(Lesson)
//   (Lesson)-[:TEACHES]->(Skill)-[:PREREQUISITE_OF]->(Skill)
//   (Lesson)-[:ALIGNED_WITH]->(LearningOutcome)
//   (Student)-[:HAS_MASTERED { score, last_assessed }]->(Skill)
//   (Student)-[:CURRENTLY_LEARNING]->(Lesson)
//   (Student)-[:RECOMMENDED_NEXT { rank, model_version }]->(Lesson)

// Index hot lookups for the recommender.
CREATE INDEX skill_difficulty FOR (s:Skill) ON (s.difficulty);
CREATE INDEX student_grade_level FOR (st:Student) ON (st.grade_level);
