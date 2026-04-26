# ScholarPath Workflows on Temporal

| Workflow | Owner service | Trigger |
|---|---|---|
| AdmissionApplicationFlow | enrolment/admission-service | Applicant submits |
| EnrolmentFlow | enrolment/enrolment-service | Offer accepted + fee paid |
| CoppaParentalConsentFlow | compliance/coppa-consent | Under-13 student creates account |
| FerpaDisclosureFlow | compliance/ferpa-service | Records request lodged |
| ExamProctoringFlow | assessment/proctoring-service | Exam start; orchestrates capture, anomaly detection, raw-video deletion |
| GradeChangeApprovalFlow | lms/lms-service | Teacher requests grade override |
| CertificateIssuanceFlow | certifications/certificate-service | Course completion + grade threshold |
| EarlyInterventionAlertFlow | analytics/early-intervention | At-risk score crosses threshold |
| FeePaymentFlow | fees/payment-gateway | Invoice raised |
| RightToErasureFlow | compliance/data-retention | GDPR Art 17 request |
| LtiToolRegistrationFlow | platform/lti-tool-consumer | Admin registers a new external tool |
