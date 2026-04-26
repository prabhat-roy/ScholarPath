{{- define "media-streaming.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "media-streaming.labels" -}}
app.kubernetes.io/name: media-streaming
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: library
{{- end -}}

{{- define "media-streaming.selectorLabels" -}}
app.kubernetes.io/name: media-streaming
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
