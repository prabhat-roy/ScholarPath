# AI_PLAN.md â€” ScholarPath (EdTech & Learning Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the ScholarPath-specific specialisation.

---

## 1. Why AI in ScholarPath

ScholarPath spans K-12, higher-ed, vocational, and corporate learning. AI
is the difference between a static LMS and an adaptive learning platform.

- Adaptive learning paths â€” IRT / BKT models adjusted by LLM rationale.
- Plagiarism + AI-text detection at submission time.
- Automated essay scoring (writing rubric assistance, not final grade).
- AI tutoring chatbot â€” Socratic, age-appropriate.
- Dropout / at-risk prediction to enable intervention.
- Skill recommendation for career-aligned upskilling.

Children's safety, academic integrity, and accessibility are the binding
constraints â€” every AI surface is age-aware, fairness-audited, and
auditable.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Adaptive learning path (skill mastery â†’ next item) | learning | IRT + BKT + LightGBM ranker + LLM rationale | <300 ms |
| 2 | AI tutoring chatbot (Socratic, age-appropriate) | tutoring | Llama 3.1 70B + curriculum RAG + age-policy | <1.5 s |
| 3 | Automated essay scoring (writing rubric) | assessment | DeBERTa + custom rubric heads + LLM critique | <3 s |
| 4 | Plagiarism + AI-text detection | integrity | Embedding match + AI-text classifiers (Binoculars/Ghostbuster) | <1 s |
| 5 | Dropout / at-risk prediction | analytics | LightGBM on engagement features | nightly |
| 6 | Skill / course recommendation | catalog, career | Two-tower retrieval + transformer ranker | <100 ms |
| 7 | Speech / pronunciation scoring (language learning) | learning | Whisper + GOP scorer | <1 s |
| 8 | OCR + scoring of handwritten worksheets | k-12 | TrOCR + Donut + LLM grader | <5 s/page |
| 9 | Question generation from textbook content | content | Llama 3.1 70B + curriculum RAG + Bloom-tagger | <8 s/set |
| 10 | Accessibility adaptation (alt-text, simplified rephrase) | accessibility | Llama 3.1 70B + image captioner | <2 s |
| 11 | Cohort sentiment / engagement signals | community | BERTopic + sentiment | hourly |
| 12 | Voice tutor for low-literacy learners (multilingual) | accessibility, k-12 | Whisper + Coqui TTS + Llama 3.1 | <2 s |

---

## 3. Hierarchical Agent Architecture

Reuses OpenClaw / Paperclip / NemoClaw from `ShopOS/AI.md`.

### Tier 0 â€” Master Architect Agent

`scholar-architect` â€” researches AI tooling, proposes services, on-boards
Tier-1 leads, weekly written report. Read-only on prod.

### Tier 1 â€” Division Leads (5)

| Agent | Scope |
|-------|-------|
| `scholar-dev-lead`        | Backend/frontend service code |
| `scholar-devops-lead`     | Helm, GitOps, infra, CI |
| `scholar-devsecops-lead`  | OPA, Vault, Cilium, Falco, COPPA, FERPA |
| `scholar-dataml-lead`     | Feature store, training, drift, fairness |
| `scholar-platform-lead`   | Cross-cutting (idempotency, saga, outbox) |

### Tier 2 â€” Specialist Agents

By language: Go, Java, Kotlin, Python, Node, Rust, TypeScript, Dart.

By tool: PostgreSQL, MongoDB, Redis, Elasticsearch, OpenSearch,
TimescaleDB, ClickHouse, Cassandra, Kafka, NATS, RabbitMQ, Vault,
Keycloak, OPA, Kyverno, Falco, Cilium, Istio, ArgoCD, Argo Workflows,
Prometheus, Grafana, Loki, Jaeger, OpenTelemetry, MinIO, Trivy, Cosign,
Pulsar, Druid, Camunda, OpenFGA, Wazuh, Moodle bridge, Open
edX bridge, H5P, Jitsi (live class), BigBlueButton,
OpenCourseWare ingest, Anki SRS bridge.

By service â€” one agent per microservice (~170). Owns README,
OpenAPI, tests, CHANGELOG, deps, /healthz.

### Tier 3 â€” Ephemeral Workers

Spawned for retraining the recommender on weekly clickstream, generating
content QA, building accessibility-adapted copies of new lessons.

### Lifecycle

Research â†’ Document â†’ Implement â†’ Test â†’ Review â†’ Deploy â†’ Monitor â†’
Respond â†’ Upgrade â†’ Report. Plus an age-policy gate: every learner-
facing AI feature has a separate eval suite for under-13 / 13-17 / adult.

---

## 4. Separate AI Infrastructure

```
ai-platform/
â”œâ”€â”€ cluster: scholar-ai-{aws,gcp,azure}   â† cloud GPU pool
â”œâ”€â”€ namespace: scholar-ai-control          â† Paperclip
â”œâ”€â”€ namespace: scholar-ai-agents           â† OpenClaw runtime
â”œâ”€â”€ namespace: scholar-ai-sandbox          â† NemoClaw â€” strict youth-safe guardrails
â”œâ”€â”€ namespace: scholar-ai-models           â† vLLM, Ollama, LiteLLM, Triton
â”œâ”€â”€ namespace: scholar-ai-data             â† Qdrant, Weaviate, MinIO, MLflow
â”œâ”€â”€ namespace: scholar-ai-obs              â† Langfuse, Phoenix
â””â”€â”€ namespace: scholar-ai-pipelines        â† Argo Workflows
```

### Hardware

- Cloud: A100 for fine-tuning + question-gen; A10G/L4 for inference.
- Voice STT/TTS scaled separately on L4.

### Software stack

Standard self-hosted set (vLLM, LiteLLM, Paperclip, OpenClaw, NemoClaw,
Qdrant, Weaviate, MLflow, Feast, Argo Workflows, Evidently, Langfuse,
Phoenix). Voice via Whisper-large-v3 + Coqui TTS.

### Data isolation

- Per-tenant-school data planes; no cross-tenant retrieval by default.
- Children's PII (DOB, school) tokenised before any prompt.
- Vector DB sharded per curriculum / region.

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| COPPA (US, under-13) | Parental-consent gate; AI features age-segmented |
| FERPA (US student records) | Records access mediated by OPA; AI never persists raw |
| GDPR-K (EU children) | Lawful basis explicit; AI personalisation off by default <16 |
| DPDP (IN) | Children's data special category; consent ledger |
| Academic integrity | AI-text detection + cite-trace mandatory; tutor refuses to write final answers |
| Accessibility (WCAG 2.2 AA, Section 508) | Tier-2 accessibility agent gates UI PRs |
| Fairness | Quarterly bias audit on dropout + recommender models |
| NemoClaw youth policy | Blocks unsafe content; age-gated tone; no romantic/sexual/violent content for under-18 |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `scholar-ai-*` cluster up; vLLM Llama 3.1 70B |
| 2 | Paperclip + NemoClaw youth policies; Tier-0 architect live |
| 3 | Tier-1 leads; AI-text detector v0 in shadow |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents (assessment â†’ tutoring â†’ recommender first) |
| 6 | Tutor v1 (high-school, English+Hindi+Spanish) |
| 7 | Adaptive learning v1; essay scoring rubric assistance |
| 8 | Voice tutor for K-3; multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- Cloud infra: $3,500 â€“ $5,800 / month per primary cloud
- No subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
