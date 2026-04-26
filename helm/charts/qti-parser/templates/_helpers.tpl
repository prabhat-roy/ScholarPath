{{- define "qti-parser.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "qti-parser.labels" -}}
app.kubernetes.io/name: qti-parser
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: assessment
{{- end -}}

{{- define "qti-parser.selectorLabels" -}}
app.kubernetes.io/name: qti-parser
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
