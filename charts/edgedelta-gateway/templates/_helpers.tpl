{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "edgedelta.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "edgedelta.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "edgedelta.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "edgedelta.labels" -}}
{{ include "edgedelta.selectorLabels" . }}
{{- if not .Values.skipCommonLabels }}
helm.sh/chart: {{ include "edgedelta.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "edgedelta.selectorLabels" -}}
app.kubernetes.io/name: {{ include "edgedelta.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
HorizontalPodAutoscaler API version can change with respect to Kubernetes Server version, check it here
*/}}
{{- define "autoscaling.apiVersion" -}}
{{- if or (.Capabilities.APIVersions.Has "autoscaling/v2/HorizontalPodAutoscaler") (semverCompare ">=1.23" .Capabilities.KubeVersion.Version) -}}
autoscaling/v2
{{- else -}}
autoscaling/v2beta2
{{- end -}}
{{- end -}}

{{/*
Check if target cluster is running OpenShift
*/}}
{{- define "isOpenShift" -}}
{{- if .Capabilities.APIVersions.Has "quota.openshift.io/v1/ClusterResourceQuota" -}}
true
{{- else -}}
false
{{- end -}}
{{- end -}}

{{/*
Generates a short, DNS-compatible hash from a given pipeline ID.
*/}}
{{- define "edgedelta.dnsSafeShortHash" -}}
{{- $pipelineId := . -}}
{{- $hash := sha256sum $pipelineId -}}
{{- $length := 8 -}}
{{- $multiply := int (mul $length 2) -}}
{{- $shortened := substr 0 $multiply $hash -}}
{{- /* Ensure first character is a letter for DNS compatibility */ -}}
{{- $firstChar := substr 0 1 $shortened -}}
{{- if not (regexMatch "[a-zA-Z]" $firstChar) -}}
{{-   $shortened = print "p" (substr 1 $multiply $shortened) -}}
{{- end -}}
{{- $shortened -}}
{{- end -}}

{{/*
Secret name for API key
*/}}
{{- define "apiKeySecretName" -}}
{{- .Values.secretApiKey.name | default (printf "%s-api-key" (include "edgedelta.fullname" .)) -}}
{{- end -}}