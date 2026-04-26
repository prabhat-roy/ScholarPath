{{- define "adaptive-learning.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "adaptive-learning.labels" -}}
app.kubernetes.io/name: adaptive-learning
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: progress
{{- end -}}

{{- define "adaptive-learning.selectorLabels" -}}
app.kubernetes.io/name: adaptive-learning
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
