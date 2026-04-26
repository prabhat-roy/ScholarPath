{{- define "submission-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "submission-service.labels" -}}
app.kubernetes.io/name: submission-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: lms
{{- end -}}

{{- define "submission-service.selectorLabels" -}}
app.kubernetes.io/name: submission-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
