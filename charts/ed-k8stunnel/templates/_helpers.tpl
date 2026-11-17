{{- define "ed-k8stunnel.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ed-k8stunnel.fullname" -}}
{{- if contains .Chart.Name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "ed-k8stunnel.labels" -}}
app.kubernetes.io/name: {{ include "ed-k8stunnel.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.Version | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end -}}

{{- define "ed-k8stunnel.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ed-k8stunnel.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "ed-k8stunnel.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- default (include "ed-k8stunnel.fullname" .) .Values.serviceAccount.name -}}
{{- else -}}
{{- default "default" .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}

{{/*
stateSecretName is referenced by the Secret itself, the Role's
resourceNames pin, the cloudflared volume, and the rendered config —
one helper so they can never drift apart.
*/}}
{{- define "ed-k8stunnel.stateSecretName" -}}
{{- .Values.stateSecret.name | default (printf "%s-state" (include "ed-k8stunnel.fullname" .)) -}}
{{- end -}}

{{/*
installTokenGuard fails the render unless exactly one install token
source is set.
*/}}
{{- define "ed-k8stunnel.installTokenGuard" -}}
{{- $existing := .Values.installToken.existingSecret -}}
{{- $inline := .Values.edgedelta.installToken -}}
{{- if and $existing $inline -}}
{{- fail "set exactly one install token source: installToken.existingSecret and edgedelta.installToken are both set" -}}
{{- end -}}
{{- if not (or $existing $inline) -}}
{{- fail "set exactly one install token source: installToken.existingSecret (preferred) or edgedelta.installToken" -}}
{{- end -}}
{{- end -}}

{{- define "ed-k8stunnel.installTokenSecretName" -}}
{{- if .Values.installToken.existingSecret -}}
{{- .Values.installToken.existingSecret -}}
{{- else -}}
{{- printf "%s-install-token" (include "ed-k8stunnel.fullname" .) -}}
{{- end -}}
{{- end -}}

{{/*
image takes (repository, tag, digest, defaultTag): a non-empty digest
wins over the tag; an empty tag falls back to defaultTag.
*/}}
{{- define "ed-k8stunnel.image" -}}
{{- if .digest -}}
{{- printf "%s@%s" .repository .digest -}}
{{- else -}}
{{- printf "%s:%s" .repository (default .defaultTag .tag) -}}
{{- end -}}
{{- end -}}

{{/*
Pod-internal loopback addresses for the kubectl-runner sidecar and the two
plain shim listeners it talks to. Derived from .Values.ports so the runner
args and the rendered config can never disagree.
*/}}
{{- define "ed-k8stunnel.runnerAddr" -}}
{{- printf "127.0.0.1:%d" (int .Values.ports.runner) -}}
{{- end -}}

{{- define "ed-k8stunnel.shimReadAddr" -}}
{{- printf "127.0.0.1:%d" (int .Values.ports.shimRead) -}}
{{- end -}}

{{- define "ed-k8stunnel.shimOperateAddr" -}}
{{- printf "127.0.0.1:%d" (int .Values.ports.shimOperate) -}}
{{- end -}}

{{/*
config renders the agent's config.yaml: .Values.config verbatim, with the
chart-derived keys forced on top (rightmost mergeOverwrite wins) so the
file always agrees with the Deployment: platform_url, install_token_env
(the env var the Deployment injects), shim.ceiling, the shim's runner-facing
listeners and runner_url, the ops listeners and tunnel.metrics_url (all from
.Values.ports), and state_secret.name (the Secret this chart creates and
RBAC-pins).
*/}}
{{- define "ed-k8stunnel.config" -}}
{{- $ops := dict "health_listen" (printf ":%d" (int .Values.ports.health)) "metrics_listen" (printf ":%d" (int .Values.ports.metrics)) -}}
{{- $tunnel := dict "origin" (include "ed-k8stunnel.origin" .) "metrics_url" (printf "http://%s:%d" (include "ed-k8stunnel.tunnelName" .) (int .Values.ports.tunnelMetrics)) -}}
{{- $shim := dict "listen" (printf "0.0.0.0:%d" (int .Values.ports.shim)) "ceiling" .Values.ceiling "read_listen" (include "ed-k8stunnel.shimReadAddr" .) "operate_listen" (include "ed-k8stunnel.shimOperateAddr" .) "runner_url" (printf "http://%s" (include "ed-k8stunnel.runnerAddr" .)) -}}
{{- $derived := dict "platform_url" .Values.platformUrl "install_token_env" "ED_INSTALL_TOKEN" "shim" $shim "ops" $ops "tunnel" $tunnel "state_secret" (dict "name" (include "ed-k8stunnel.stateSecretName" .)) -}}
{{- toYaml (mustMergeOverwrite (deepCopy (default (dict) .Values.config)) $derived) -}}
{{- end -}}

{{- define "ed-k8stunnel.tunnelName" -}}
{{- printf "%s-tunnel" (include "ed-k8stunnel.fullname" . | trunc 56 | trimSuffix "-") -}}
{{- end -}}

{{- define "ed-k8stunnel.tunnelSelectorLabels" -}}
app.kubernetes.io/name: {{ printf "%s-tunnel" (include "ed-k8stunnel.name" . | trunc 56 | trimSuffix "-") }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "ed-k8stunnel.agentServiceName" -}}
{{- printf "%s-agent" (include "ed-k8stunnel.fullname" . | trunc 57 | trimSuffix "-") -}}
{{- end -}}

{{- define "ed-k8stunnel.origin" -}}
{{- printf "tcp://%s.%s.svc.%s:%d" (include "ed-k8stunnel.agentServiceName" .) .Release.Namespace .Values.clusterDomain (int .Values.ports.shim) -}}
{{- end -}}
