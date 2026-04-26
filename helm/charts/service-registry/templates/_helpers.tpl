{{- define "service-registry.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "service-registry.labels" -}}
app.kubernetes.io/name: service-registry
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: platform
{{- end -}}

{{- define "service-registry.selectorLabels" -}}
app.kubernetes.io/name: service-registry
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
