{{- define "lti-tool-consumer.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "lti-tool-consumer.labels" -}}
app.kubernetes.io/name: lti-tool-consumer
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: platform
{{- end -}}

{{- define "lti-tool-consumer.selectorLabels" -}}
app.kubernetes.io/name: lti-tool-consumer
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
