{{- define "credential-verifier.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "credential-verifier.labels" -}}
app.kubernetes.io/name: credential-verifier
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: certifications
{{- end -}}

{{- define "credential-verifier.selectorLabels" -}}
app.kubernetes.io/name: credential-verifier
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
