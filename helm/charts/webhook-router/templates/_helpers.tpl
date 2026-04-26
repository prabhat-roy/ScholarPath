{{- define "webhook-router.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "webhook-router.labels" -}}
app.kubernetes.io/name: webhook-router
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: platform
{{- end -}}

{{- define "webhook-router.selectorLabels" -}}
app.kubernetes.io/name: webhook-router
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
