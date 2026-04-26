{{- define "messaging-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "messaging-service.labels" -}}
app.kubernetes.io/name: messaging-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: communications
{{- end -}}

{{- define "messaging-service.selectorLabels" -}}
app.kubernetes.io/name: messaging-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
