{{- define "anti-cheat.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "anti-cheat.labels" -}}
app.kubernetes.io/name: anti-cheat
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: assessment
{{- end -}}

{{- define "anti-cheat.selectorLabels" -}}
app.kubernetes.io/name: anti-cheat
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
