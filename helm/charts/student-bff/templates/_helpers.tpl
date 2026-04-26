{{- define "student-bff.name" -}}{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}{{- end -}}
{{- define "student-bff.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}{{- end -}}
{{- end -}}
{{- define "student-bff.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}{{- include "student-bff.fullname" . -}}
{{- else -}}{{- default "default" .Values.serviceAccount.name -}}{{- end -}}
{{- end -}}
{{- define "student-bff.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "student-bff.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: scholarpath
scholarpath.io/domain: platform
{{- end -}}
{{- define "student-bff.selectorLabels" -}}
app.kubernetes.io/name: {{ include "student-bff.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
