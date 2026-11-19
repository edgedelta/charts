# ed-k8stunnel

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.1](https://img.shields.io/badge/AppVersion-v0.1.1-informational?style=flat-square)

Edge Delta's in-cluster Kubernetes tunnel agent: a kube-API shim behind an outbound-only Cloudflare Tunnel, capped at a read or operate (read plus a small write allowlist) ceiling. Outbound-only with mutual TLS end to end, no exec, no watch, and the RBAC reads no Secret but its own state.

## Requirements

Kubernetes: `>=1.29.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for both Deployments. |
| ceiling | string | `"read"` | What the shim forwards: `read` (GET only) or `operate` (read plus the write allowlist, which also adds the matching write ClusterRole). |
| clusterDomain | string | `"cluster.local"` | Cluster DNS domain. |
| config | object | `{}` | The agent's config.yaml, verbatim (snake_case keys); chart-derived keys always win. |
| customCA.existingSecret | string | `""` | Existing Secret holding an extra CA bundle for TLS-intercepting proxies. |
| customCA.key | string | `"ca.crt"` | Key of the bundle inside that Secret. |
| edgedelta.installToken | string | `""` | Install token for `--set`; the chart templates its own Secret from it. |
| image.digest | string | `""` | Non-empty digest wins over tag. |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| image.repository | string | `"gcr.io/edgedelta/k8stunnel"` | Agent image. |
| image.tag | string | `""` | Empty tag follows the chart appVersion (the matching release). |
| imagePullSecrets | list | `[]` | Image pull secrets for both Deployments. |
| installToken.existingSecret | string | `""` | Name of an existing Secret holding the Edge Delta connector install token (preferred: the token never touches Helm release storage). |
| installToken.secretKey | string | `"install-token"` | Key inside that Secret. |
| metrics.service.enabled | bool | `false` | Create a Service for the agent and cloudflared metrics ports. |
| metrics.serviceMonitor.enabled | bool | `false` | Create a Prometheus Operator ServiceMonitor (also requires `metrics.service.enabled`). |
| metrics.serviceMonitor.interval | string | `"30s"` | Scrape interval. |
| metrics.serviceMonitor.labels | object | `{}` | Extra ServiceMonitor labels. |
| networkPolicy.egress.apiServerCIDRs | list | `[]` | Required: API server CIDRs, including the Service IP and backend addresses your CNI's DNAT needs. |
| networkPolicy.egress.apiServerPorts | list | `[443,6443]` | API server ports. |
| networkPolicy.egress.cloudflareEdgeCIDRs | list | `["198.41.192.0/19","2606:4700:a0::/44"]` | Cloudflare edge ranges cloudflared may reach on 7844. |
| networkPolicy.egress.dns.namespace | string | `"kube-system"` | Namespace of the cluster DNS pods. |
| networkPolicy.egress.dns.podLabels | object | `{"k8s-app":"kube-dns"}` | Labels selecting the cluster DNS pods. |
| networkPolicy.egress.platformCIDRs | list | `[]` | Required: platform registration endpoint CIDRs, or the configured egress proxy. |
| networkPolicy.egress.platformPorts | list | `[443]` | Platform or proxy ports. |
| networkPolicy.enabled | bool | `false` | Create NetworkPolicies restricting both pods' egress; requires a CNI that enforces them and the CIDRs below. |
| nodeSelector | object | `{}` | Node selector for both Deployments. |
| platformUrl | string | `"https://webhook.ai.edgedelta.com"` | Edge Delta platform the agent registers with. |
| podAnnotations | object | `{}` | Extra pod annotations. |
| podLabels | object | `{}` | Extra pod labels. |
| ports.health | int | `8081` | Agent health endpoint. |
| ports.metrics | int | `9090` | Agent Prometheus metrics. |
| ports.runner | int | `8446` | kubectl-runner sidecar (pod loopback). |
| ports.shim | int | `8443` | mTLS listener cloudflared forwards to. |
| ports.shimOperate | int | `8445` | Agent listener at the chart ceiling (pod loopback). |
| ports.shimRead | int | `8444` | Agent listener pinned to the read ceiling (pod loopback). |
| ports.tunnelMetrics | int | `2000` | cloudflared metrics. |
| proxy.httpsProxy | string | `""` | HTTPS proxy for the agent's platform calls. |
| proxy.noProxy | string | `""` | NO_PROXY for the agent. |
| rbac.create | bool | `true` | Create the ClusterRoles and bindings. |
| rbac.readConfigMaps | bool | `false` | Grant ConfigMap reads; ConfigMaps can expose credentials. |
| rbac.readPodLogs | bool | `false` | Grant pod log reads; logs can expose credentials. |
| rbac.rules | list | `[]` | Non-empty replaces the generated read ClusterRole rules verbatim (readPodLogs and readConfigMaps are then ignored); standard PolicyRule entries. |
| replicaCount | int | `1` | Single replica by design (the schema caps it at 1): one tunnel, one agent, no leader election. |
| resources | object | `{"limits":{"memory":"256Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Agent container resources. |
| runner.homeSizeLimit | string | `"64Mi"` | Size limit of the emptyDir HOME kubectl uses for its discovery cache. |
| runner.kubectlPath | string | `"/usr/local/bin/kubectl"` | kubectl binary inside the agent image. |
| runner.resources | object | `{"limits":{"memory":"256Mi"},"requests":{"cpu":"50m","memory":"64Mi"}}` | kubectl-runner container resources. |
| serviceAccount.annotations | object | `{}` | ServiceAccount annotations. |
| serviceAccount.create | bool | `true` | Create the agent ServiceAccount. |
| serviceAccount.name | string | `""` | ServiceAccount name; empty derives it from the release. |
| stateSecret.name | string | `""` | Name of the chart-created state Secret; empty means `<fullname>-state`. |
| tolerations | list | `[]` | Tolerations for both Deployments. |
| tunnel.args | list | `["tunnel","--no-autoupdate","--metrics","0.0.0.0:{{ .Values.ports.tunnelMetrics }}","run"]` | cloudflared invocation, rendered through tpl so the metrics flag follows `ports.tunnelMetrics`. |
| tunnel.binaryPath | string | `"/usr/local/bin/cloudflared"` | cloudflared binary inside its image. |
| tunnel.image.digest | string | `"sha256:4955524aeaa379e154023d5a027c250f7b35041a2e7e950cf13f144bc9b9c5ba"` | Non-empty digest wins over tag. |
| tunnel.image.repository | string | `"docker.io/cloudflare/cloudflared"` | cloudflared image. |
| tunnel.image.tag | string | `"2026.10.7"` | cloudflared tag. |
| tunnel.resources | object | `{"limits":{"memory":"256Mi"},"requests":{"cpu":"50m","memory":"64Mi"}}` | cloudflared container resources. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
