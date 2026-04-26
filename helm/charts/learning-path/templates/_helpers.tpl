{{- define "learning-path.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "learning-path.labels" -}}
app.kubernetes.io/name: learning-path
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: progress
{{- end -}}

{{- define "learning-path.selectorLabels" -}}
app.kubernetes.io/name: learning-path
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
