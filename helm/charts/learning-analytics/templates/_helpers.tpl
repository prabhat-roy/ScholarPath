{{- define "learning-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "learning-analytics.labels" -}}
app.kubernetes.io/name: learning-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: analytics
{{- end -}}

{{- define "learning-analytics.selectorLabels" -}}
app.kubernetes.io/name: learning-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
