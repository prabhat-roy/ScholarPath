{{- define "proctoring-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "proctoring-service.labels" -}}
app.kubernetes.io/name: proctoring-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: assessment
{{- end -}}

{{- define "proctoring-service.selectorLabels" -}}
app.kubernetes.io/name: proctoring-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
