{{/*
Common labels for resources
Usage: {{ call "servarr.labels" "radarr" }}
*/}}
{{- define "servarr.labels" -}}
app.kubernetes.io/name: {{ index . 0 }}
app.kubernetes.io/instance: {{ .context.Release.Name | quote }}-{{ index . 0 }}
app.kubernetes.io/version: {{ .context.Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .context.Release.Service | quote }}
app.kubernetes.io/part-of: {{ .context.Release.Name | quote }}
{{- end }}

{{/*
Selector labels for resources (without version/managed-by/part-of as these shouldn't be in selectors)
Usage: {{ call "servarr.selectorLabels" "radarr" }}
*/}}
{{- define "servarr.selectorLabels" -}}
app.kubernetes.io/name: {{ index . 0 }}
app.kubernetes.io/instance: {{ .context.Release.Name }}-{{ index . 0 }}
{{- end }}
