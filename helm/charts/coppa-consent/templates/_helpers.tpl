{{- define "coppa-consent.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "coppa-consent.labels" -}}
app.kubernetes.io/name: coppa-consent
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: compliance
{{- end -}}

{{- define "coppa-consent.selectorLabels" -}}
app.kubernetes.io/name: coppa-consent
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
