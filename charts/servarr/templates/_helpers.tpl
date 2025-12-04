{{/*
Common labels for resources
Usage: {{ include "servarr.labels" (dict "context" . "appName" "radarr") }}
*/}}
{{- define "servarr.labels" -}}
app.kubernetes.io/name: {{ .appName }}
app.kubernetes.io/instance: {{ .context.Release.Name | quote }}-{{ .appName }}
app.kubernetes.io/version: {{ .context.Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .context.Release.Service | quote }}
app.kubernetes.io/part-of: {{ .context.Release.Name | quote }}
{{- end }}

{{/*
Selector labels for resources (without version/managed-by/part-of as these shouldn't be in selectors)
Usage: {{ include "servarr.selectorLabels" (dict "context" . "appName" "radarr") }}
*/}}
{{- define "servarr.selectorLabels" -}}
app.kubernetes.io/name: {{ .appName }}
app.kubernetes.io/instance: {{ .context.Release.Name }}-{{ .appName }}
{{- end }}
