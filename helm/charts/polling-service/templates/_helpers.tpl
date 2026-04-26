{{- define "polling-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "polling-service.labels" -}}
app.kubernetes.io/name: polling-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: classroom
{{- end -}}

{{- define "polling-service.selectorLabels" -}}
app.kubernetes.io/name: polling-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
