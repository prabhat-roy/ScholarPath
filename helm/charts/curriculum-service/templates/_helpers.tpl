{{- define "curriculum-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "curriculum-service.labels" -}}
app.kubernetes.io/name: curriculum-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: course
{{- end -}}

{{- define "curriculum-service.selectorLabels" -}}
app.kubernetes.io/name: curriculum-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
