{{- define "invoice-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "invoice-service.labels" -}}
app.kubernetes.io/name: invoice-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: fees
{{- end -}}

{{- define "invoice-service.selectorLabels" -}}
app.kubernetes.io/name: invoice-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
