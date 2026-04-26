{{- define "admin-bff.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "admin-bff.labels" -}}
app.kubernetes.io/name: admin-bff
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: platform
{{- end -}}

{{- define "admin-bff.selectorLabels" -}}
app.kubernetes.io/name: admin-bff
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
