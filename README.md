# ScholarPath — Enterprise Learning & Education Platform

Enterprise-grade, cloud-native education platform built on open source technologies.
Covers the full learning lifecycle — student enrolment, live classes, LMS, assessments,
certifications, parent engagement, and institutional analytics — designed for universities,
K-12 school networks, online course providers, and corporate training platforms.
FERPA and COPPA compliant.

---

## Overview

| Attribute         | Value                                                          |
|-------------------|----------------------------------------------------------------|
| Type              | Learning Management System + Virtual Classroom + EdTech Suite  |
| Domains           | 15 business domains                                            |
| Services          | 175+ microservices                                             |
| Languages         | Go, Java, Kotlin, Python, Node.js, TypeScript, Rust            |
| Standards         | LTI 1.3, xAPI (Tin Can), SCORM 1.2 / 2004, QTI 2.2, IMS Global |
| Compliance        | FERPA, COPPA, GDPR, WCAG 2.1 AA (accessibility)               |
| Databases         | PostgreSQL, MongoDB, Redis, Cassandra, Elasticsearch, Neo4j    |
| Message Broker    | Apache Kafka, NATS JetStream, RabbitMQ                         |
| Cloud             | AWS (primary), GCP                                             |
| Orchestration     | Kubernetes (EKS / GKE)                                         |
| Frontend          | Next.js (student portal), React (teacher dashboard), React Native (mobile), Angular (admin) |

---

## Business Domains

| # | Domain                  | Key Services                                                          |
|---|-------------------------|-----------------------------------------------------------------------|
| 1 | Enrolment & Admissions  | enrolment-service, admission-service, waitlist, document-verification |
| 2 | Course Management       | course-service, curriculum-service, content-library, syllabus-builder |
| 3 | Live Classroom          | virtual-classroom, breakout-rooms, whiteboard, polling, attendance    |
| 4 | Learning Management     | lms-service, assignment-service, submission-service, rubric-service   |
| 5 | Assessment & Exams      | exam-service, proctoring-service, qti-parser, grading, anti-cheat    |
| 6 | Certifications          | certificate-service, badge-service, credential-verifier, blockchain-anchor |
| 7 | Student Progress        | progress-tracking, learning-path, recommendation, adaptive-learning  |
| 8 | Communications          | notification-orchestrator, messaging, announcement, parent-portal     |
| 9 | Fee & Payments          | fee-service, invoice-service, payment-gateway, scholarship, refund   |
| 10 | Library & Resources     | digital-library, e-book-service, resource-repository, media-streaming |
| 11 | Staff & Faculty         | faculty-service, timetable, payroll, performance-review, leave       |
| 12 | Analytics & AI          | learning-analytics, early-intervention, content-recommendation, nlp  |
| 13 | Identity & Access       | auth-service, student-sso, parent-sso, mfa, lti-provider             |
| 14 | Compliance & Safeguarding | ferpa-service, coppa-consent, data-retention, safeguarding-alerts   |
| 15 | Platform                | api-gateway, student-bff, teacher-bff, parent-bff, graphql-gateway   |

---

## Architecture

```
              ┌────────────────────────────────────────────┐
              │               API Gateway                   │
              │    (LTI 1.3 · OAuth2 · Rate Limit · WAF)   │
              └──────┬──────────┬──────────┬───────────────┘
                     │          │          │
           ┌─────────▼─┐  ┌────▼──────┐  ┌▼──────────────┐
           │Student BFF│  │Teacher BFF│  │  Parent BFF   │
           │ (Next.js) │  │  (React)  │  │  (React)      │
           └─────────┬─┘  └────┬──────┘  └┬──────────────┘
                     │         │           │
      ┌──────────────▼─────────▼───────────▼───────────────┐
      │              Internal gRPC Mesh (Istio mTLS)        │
      │  ┌──────────┐  ┌────────────┐  ┌────────────────┐  │
      │  │  Course  │  │  Live      │  │  Assessment    │  │
      │  │  & LMS   │  │  Classroom │  │  & Proctoring  │  │
      │  └──────────┘  └────────────┘  └────────────────┘  │
      └──────────────────────┬──────────────────────────────┘
                             │ Kafka (xAPI Learning Events)
                   ┌─────────▼──────────┐
                   │  xAPI LRS           │
                   │ (Learning Record    │
                   │  Store — SCORM/xAPI)│
                   └─────────┬──────────┘
                             │
         ┌───────────────────▼────────────────────────┐
         │           Learning Analytics               │
         │  ClickHouse · Spark · Airflow · Superset   │
         └─────────────────────────────────────────────┘
```

---

## Tech Stack

### Education Standards
- **LTI 1.3**: Deep integration with third-party tools (Turnitin, Zoom, Khan Academy) via IMS LTI 1.3
- **xAPI (Tin Can)**: All learning events published as xAPI statements to Learning Record Store (LRS)
- **SCORM 2004**: Legacy SCORM course packages wrapped and served via SCORM runtime engine
- **QTI 2.2**: IMS QTI format for portable assessment items (import/export with other LMS platforms)
- **Open Badges v3**: Verifiable digital credentials anchored on a blockchain (Blockcerts)

### Infrastructure
- **Kubernetes**: EKS + GKE — dedicated node pools for live classroom (GPU nodes for AI proctoring)
- **Video Infrastructure**: Jitsi Meet (open source) for virtual classrooms; MediaSoup for WebRTC SFU
- **Media Storage**: MinIO / S3 (course videos, recordings); Cloudfront CDN for global delivery
- **Search**: Elasticsearch (course search, library search); Typesense (instant autocomplete)
- **Graph DB**: Neo4j — learning path recommendations (skill graph traversal)

### CI/CD & GitOps
- **CI**: Jenkins, GitHub Actions, GitLab CI
- **CD**: ArgoCD (App-of-Apps), Argo Rollouts (canary — academic semester boundaries)
- **IaC**: Terraform (EKS/GKE), Ansible, Crossplane
- **Secrets**: HashiCorp Vault + External Secrets Operator

### Observability
- **Metrics**: Prometheus + Grafana (live classroom capacity, concurrent users, SLOs)
- **Logs**: Loki + Fluent Bit (student PII masked at collection — FERPA compliance)
- **Traces**: Jaeger + OpenTelemetry (trace assessment submissions end-to-end)
- **Analytics**: Learning dashboards on Apache Superset — engagement, completion rates, at-risk students

### Security (FERPA / COPPA)
- **Identity**: Keycloak (student/parent/staff SSO), Google Classroom / Microsoft 365 federation
- **COPPA**: Parental consent workflow for students under 13 — data minimization enforced at API level
- **Proctoring**: AI-based proctoring (face detection + eye tracking) using OpenCV + TensorFlow — on-premise, no third-party video upload
- **Network**: Cilium eBPF (zero-trust), Istio mTLS, WAF (Coraza) on all public endpoints
- **Scanning**: Trivy, Semgrep, OWASP ZAP, SonarQube

### AI / ML (Adaptive Learning)
- **Adaptive Learning Engine**: IRT (Item Response Theory) model — dynamically adjusts question difficulty per student
- **Early Intervention**: ML model predicting at-risk students (dropout likelihood) — triggers counsellor alert
- **Content Recommendation**: Collaborative filtering (Neo4j graph) + content-based (TF-IDF on course materials)
- **Essay Grading**: NLP-assisted essay scoring (BERT fine-tuned on academic writing)
- **Plagiarism Detection**: LSH + MinHash fingerprinting for submission similarity (open source, no external API)
- **Learning Path Optimization**: Reinforcement learning model (knowledge graph traversal) for personalised paths

---

## Key Design Decisions

1. **xAPI as the universal event bus for learning**: Every student interaction (video watched, quiz attempted, assignment submitted) publishes an xAPI statement — enables cross-platform analytics without vendor lock-in
2. **On-premise AI proctoring**: No student video leaves the cluster — privacy-first approach (FERPA / COPPA)
3. **LTI 1.3 for extensibility**: Third-party tools plug in via LTI 1.3 — no custom integrations required
4. **SCORM runtime in browser**: SCORM packages run client-side (SCORM Cloud open source runtime) — server only stores completion state
5. **Semester-aware deployment windows**: Production deployments scheduled outside academic peak periods (exam weeks, semester start)
6. **Accessibility first**: All frontend services WCAG 2.1 AA compliant — automated axe-core checks in every CI pipeline

---

## Compliance Controls

| Requirement      | Implementation                                                         |
|------------------|------------------------------------------------------------------------|
| FERPA            | Consent-gated data sharing, student PII masked in logs, parent access workflows |
| COPPA            | Parental consent for under-13, data minimization, no behavioural advertising |
| GDPR Art. 17     | Right-to-erasure workflow via data-retention-service                   |
| WCAG 2.1 AA      | axe-core automated a11y tests in CI; manual audits per semester        |

---

## Status

- [ ] Architecture design & xAPI data model
- [ ] Service registry & proto definitions
- [ ] LTI 1.3 provider implementation
- [ ] Service skeletons (healthz, metrics, graceful shutdown)
- [ ] Docker Compose (local dev)
- [ ] Helm charts (per-service)
- [ ] CI/CD pipelines
- [ ] GitOps (ArgoCD)
- [ ] FERPA/COPPA compliance controls
- [ ] Adaptive learning AI engine
