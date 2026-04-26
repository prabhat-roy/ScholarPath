{{- define "document-verification.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "document-verification.labels" -}}
app.kubernetes.io/name: document-verification
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: enrolment
{{- end -}}

{{- define "document-verification.selectorLabels" -}}
app.kubernetes.io/name: document-verification
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
