{{- define "performance-review.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "performance-review.labels" -}}
app.kubernetes.io/name: performance-review
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: staff
{{- end -}}

{{- define "performance-review.selectorLabels" -}}
app.kubernetes.io/name: performance-review
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
