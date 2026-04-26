{{- define "lti-provider.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "lti-provider.labels" -}}
app.kubernetes.io/name: lti-provider
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: identity
{{- end -}}

{{- define "lti-provider.selectorLabels" -}}
app.kubernetes.io/name: lti-provider
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
