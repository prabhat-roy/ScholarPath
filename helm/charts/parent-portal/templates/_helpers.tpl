{{- define "parent-portal.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "parent-portal.labels" -}}
app.kubernetes.io/name: parent-portal
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: communications
{{- end -}}

{{- define "parent-portal.selectorLabels" -}}
app.kubernetes.io/name: parent-portal
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
