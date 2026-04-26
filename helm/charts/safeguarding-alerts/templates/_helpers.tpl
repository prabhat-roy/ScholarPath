{{- define "safeguarding-alerts.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "safeguarding-alerts.labels" -}}
app.kubernetes.io/name: safeguarding-alerts
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: compliance
{{- end -}}

{{- define "safeguarding-alerts.selectorLabels" -}}
app.kubernetes.io/name: safeguarding-alerts
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
