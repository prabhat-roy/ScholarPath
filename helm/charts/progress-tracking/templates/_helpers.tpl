{{- define "progress-tracking.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "progress-tracking.labels" -}}
app.kubernetes.io/name: progress-tracking
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: progress
{{- end -}}

{{- define "progress-tracking.selectorLabels" -}}
app.kubernetes.io/name: progress-tracking
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
