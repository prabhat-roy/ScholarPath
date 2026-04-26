{{- define "content-library.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "content-library.labels" -}}
app.kubernetes.io/name: content-library
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: course
{{- end -}}

{{- define "content-library.selectorLabels" -}}
app.kubernetes.io/name: content-library
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
