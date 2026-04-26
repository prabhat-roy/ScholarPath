{{- define "syllabus-builder.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "syllabus-builder.labels" -}}
app.kubernetes.io/name: syllabus-builder
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: course
{{- end -}}

{{- define "syllabus-builder.selectorLabels" -}}
app.kubernetes.io/name: syllabus-builder
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
