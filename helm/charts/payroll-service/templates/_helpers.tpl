{{- define "payroll-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "payroll-service.labels" -}}
app.kubernetes.io/name: payroll-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: staff
{{- end -}}

{{- define "payroll-service.selectorLabels" -}}
app.kubernetes.io/name: payroll-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
