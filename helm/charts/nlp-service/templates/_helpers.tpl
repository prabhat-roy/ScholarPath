{{- define "nlp-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "nlp-service.labels" -}}
app.kubernetes.io/name: nlp-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: analytics
{{- end -}}

{{- define "nlp-service.selectorLabels" -}}
app.kubernetes.io/name: nlp-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
