# Source Code - ScholarPath

Backend services organised by business domain. Each domain has its own folder; each
service inside a domain has its own subfolder with a complete project layout
(Dockerfile, Makefile, `.env.example`, language-specific build file, source tree).

## Domains

- [`platform/`](platform/) - API gateway, BFFs, GraphQL, LTI providers
- [`identity/`](identity/) - Auth, SSO, MFA, RBAC, identity vault
- [`enrolment/`](enrolment/) - Admission, enrolment, waitlist, transfer credit
- [`course/`](course/) - Course catalog, content, syllabus, SCORM, LTI launch
- [`classroom/`](classroom/) - Live virtual classroom, SFU, breakout, whiteboard
- [`lms/`](lms/) - LMS core, assignments, submissions, gradebook, plagiarism
- [`assessment/`](assessment/) - Exams, QTI, item bank, proctoring, grading
- [`certifications/`](certifications/) - Certificates, badges, blockchain anchor
- [`progress/`](progress/) - Progress tracking, adaptive learning, recommendations
- [`communications/`](communications/) - Notifications, email, SMS, parent portal
- [`fees/`](fees/) - Fee structure, invoicing, payment gateway, scholarships
- [`library/`](library/) - Digital library, e-books, OER, media streaming
- [`staff/`](staff/) - Faculty, timetable, payroll, performance, leave
- [`analytics/`](analytics/) - Learning analytics, xAPI LRS, dashboards
- [`compliance/`](compliance/) - FERPA, COPPA, audit, retention, accessibility
- [`chat/`](chat/) - Real-time chat, presence, moderation, AI tutor bot
- [`video/`](video/) - Recording, transcoding, captions, VOD, live streaming
- [`content/`](content/) - Authoring, storage, CDN, conversion, H5P
- [`recommend/`](recommend/) - Recommendation engine, feature store, ML serving
- [`search/`](search/) - Indexing, semantic search, autocomplete, faceted search
- [`integrations/`](integrations/) - Google Classroom, MS Teams, Zoom, Turnitin

Total: **175+ services**.

## Conventions

- One folder per service; one main entry file per language (`main.go`, `Application.java`, `main.py`, etc.)
- Every service exposes `/healthz` returning `{ "status": "ok" }`
- Every service ships a `Dockerfile` (multi-stage, non-root, minimal base) and a `Makefile`
- gRPC contracts live in [`../proto/<domain>/<service>.proto`](../proto/)
- Kafka schemas live in [`../events/`](../events/)

## Languages

- **Go** (1.24) - gateway, BFFs, virtual classroom signalling, payment-gateway, audit-trail
- **Java 21 / Spring Boot 3.3** - LMS core, fee management, certificates, enrolment
- **Kotlin / Spring Boot 3.3** - assessment engine, QTI parser, role service
- **Python 3.12 / FastAPI** - adaptive learning, content recommendation NLP, proctoring vision, early intervention
- **Node.js 22 / Fastify** - notifications, parent portal, real-time chat, whiteboard, polling
- **Rust 1.80 / Actix** - virtual-classroom SFU, low-latency video pipeline, identity-vault, lockdown-browser
