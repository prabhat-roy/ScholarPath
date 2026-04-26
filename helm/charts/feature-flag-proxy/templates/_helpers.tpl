{{- define "feature-flag-proxy.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "feature-flag-proxy.labels" -}}
app.kubernetes.io/name: feature-flag-proxy
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: platform
{{- end -}}

{{- define "feature-flag-proxy.selectorLabels" -}}
app.kubernetes.io/name: feature-flag-proxy
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
