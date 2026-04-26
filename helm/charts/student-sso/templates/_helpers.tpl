{{- define "student-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "student-sso.labels" -}}
app.kubernetes.io/name: student-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: identity
{{- end -}}

{{- define "student-sso.selectorLabels" -}}
app.kubernetes.io/name: student-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
