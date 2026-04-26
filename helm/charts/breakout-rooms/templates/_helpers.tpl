{{- define "breakout-rooms.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "breakout-rooms.labels" -}}
app.kubernetes.io/name: breakout-rooms
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: classroom
{{- end -}}

{{- define "breakout-rooms.selectorLabels" -}}
app.kubernetes.io/name: breakout-rooms
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
