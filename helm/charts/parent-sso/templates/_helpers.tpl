{{- define "parent-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "parent-sso.labels" -}}
app.kubernetes.io/name: parent-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: identity
{{- end -}}

{{- define "parent-sso.selectorLabels" -}}
app.kubernetes.io/name: parent-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
