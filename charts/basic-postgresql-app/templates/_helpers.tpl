{{- define "exchange-rates.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "exchange-rates.name" -}}
{{- if .Values.nameOverride -}}
{{- .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "exchange-rates.chart" -}}
{{- .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{- define "labels.app" -}}
app: {{ .Values.name }}-app
version: v1
app.kubernetes.io/component: {{ .Values.name }}-app
app.kubernetes.io/instance: {{ .Values.name }}-app
app.kubernetes.io/part-of: {{ .Values.name }}
app.openshift.io/runtime: quarkus
{{- end -}}

{{- define "labels.db" -}}
app:  {{ .Values.name }}-db
app.kubernetes.io/part-of:  {{ .Values.name }}
app.openshift.io/runtime: postgresql
{{- end -}}
