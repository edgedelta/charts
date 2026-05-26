# edgedelta-coordinator

![Version: 2.18.0](https://img.shields.io/badge/Version-2.18.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.18.0](https://img.shields.io/badge/AppVersion-v2.18.0-informational?style=flat-square)

Edge Delta Coordinator Agent Chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalClusterRoleRules | list | `[]` |  |
| annotations | object | `{}` |  |
| apiKey | string | `""` |  |
| clusterRoleRules[0].apiGroups[0] | string | `""` |  |
| clusterRoleRules[0].resources[0] | string | `"namespaces"` |  |
| clusterRoleRules[0].resources[1] | string | `"pods"` |  |
| clusterRoleRules[0].resources[2] | string | `"pods/log"` |  |
| clusterRoleRules[0].resources[3] | string | `"events"` |  |
| clusterRoleRules[0].resources[4] | string | `"nodes"` |  |
| clusterRoleRules[0].resources[5] | string | `"nodes/metrics"` |  |
| clusterRoleRules[0].resources[6] | string | `"services"` |  |
| clusterRoleRules[0].verbs[0] | string | `"get"` |  |
| clusterRoleRules[0].verbs[1] | string | `"watch"` |  |
| clusterRoleRules[0].verbs[2] | string | `"list"` |  |
| clusterRoleRules[1].apiGroups[0] | string | `""` |  |
| clusterRoleRules[1].resources[0] | string | `"events"` |  |
| clusterRoleRules[1].verbs[0] | string | `"create"` |  |
| clusterRoleRules[2].apiGroups[0] | string | `"coordination.k8s.io"` |  |
| clusterRoleRules[2].resources[0] | string | `"leases"` |  |
| clusterRoleRules[2].verbs[0] | string | `"get"` |  |
| clusterRoleRules[2].verbs[1] | string | `"list"` |  |
| clusterRoleRules[2].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[2].verbs[3] | string | `"create"` |  |
| clusterRoleRules[2].verbs[4] | string | `"update"` |  |
| clusterRoleRules[2].verbs[5] | string | `"patch"` |  |
| clusterRoleRules[2].verbs[6] | string | `"delete"` |  |
| clusterRoleRules[3].apiGroups[0] | string | `"metrics.k8s.io"` |  |
| clusterRoleRules[3].resources[0] | string | `"pods"` |  |
| clusterRoleRules[3].resources[1] | string | `"nodes"` |  |
| clusterRoleRules[3].verbs[0] | string | `"get"` |  |
| clusterRoleRules[3].verbs[1] | string | `"list"` |  |
| clusterRoleRules[3].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[4].apiGroups[0] | string | `"apps"` |  |
| clusterRoleRules[4].resources[0] | string | `"daemonsets"` |  |
| clusterRoleRules[4].resources[1] | string | `"deployments"` |  |
| clusterRoleRules[4].resources[2] | string | `"replicasets"` |  |
| clusterRoleRules[4].resources[3] | string | `"statefulsets"` |  |
| clusterRoleRules[4].verbs[0] | string | `"watch"` |  |
| clusterRoleRules[4].verbs[1] | string | `"list"` |  |
| clusterRoleRules[5].apiGroups[0] | string | `"batch"` |  |
| clusterRoleRules[5].resources[0] | string | `"jobs"` |  |
| clusterRoleRules[5].resources[1] | string | `"cronjobs"` |  |
| clusterRoleRules[5].verbs[0] | string | `"watch"` |  |
| clusterRoleRules[5].verbs[1] | string | `"list"` |  |
| coordinatorProps.port | int | `5555` |  |
| coordinatorProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
| edAggregatorTraceFiles | string | `""` |  |
| edBackendDisabled | string | `""` |  |
| edClusterName | string | `""` |  |
| edConfigContent | string | `""` |  |
| edCustomTags | string | `""` |  |
| edDisableLeaderElection | string | `""` |  |
| edEnableControllerDiscovery | bool | `true` |  |
| edSkipConfDownload | string | `""` |  |
| edSkipTlsVerify | string | `""` |  |
| edSuppressionMode | string | `""` |  |
| edTagOverride | string | `""` |  |
| edTraceFiles | string | `""` |  |
| edWorkflowPrefixes | string | `""` |  |
| edWorkflows | string | `""` |  |
| fullnameOverride | string | `""` | Override the full name of resources. |
| goMemLimit | string | `""` |  |
| httpProxy | string | `""` |  |
| httpsProxy | string | `""` |  |
| image.fullPath | string | `""` |  |
| image.name | string | `"agent"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.tag | string | `""` |  |
| instructionURL | string | `"https://app.edgedelta.com"` |  |
| nameOverride | string | `""` | Override the name of resources. |
| networkPolicy | object | `{"cilium":{"dnsSelector":{"toEndpoints":[{"matchLabels":{"k8s:io.kubernetes.pod.namespace":"kube-system","k8s:k8s-app":"kube-dns"}}]}},"enabled":false,"type":"cilium"}` | Manage NetworkPolicy |
| networkPolicy.cilium.dnsSelector | object | kube-dns in namespace kube-system | Cilium selector of the DNS server entity |
| networkPolicy.enabled | bool | `false` | If true, create NetworkPolicy for DaemonSet |
| networkPolicy.type | string | `"cilium"` | Type of the network policy to use. Can be: * cilium     for cilium.io/v2/CiliumNetworkPolicy |
| noProxy | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.mountPath | string | `"/edgedelta/data"` |  |
| persistence.size | string | `"1Gi"` |  |
| persistence.storageClassName | string | `""` |  |
| podSecurity.apparmor.enabled | bool | `false` | If true, it will enable apparmor for the pods |
| podSecurity.apparmor.profile | string | `"unconfined"` | If apparmor enabled, it will be the profile for apparmor enforcement for the pods |
| podSecurity.capabilities | list | `["SYS_ADMIN","SYS_RESOURCE","SYS_PTRACE","NET_ADMIN","NET_BROADCAST","NET_RAW","IPC_LOCK","CHOWN","AUDIT_CONTROL","AUDIT_READ","DAC_READ_SEARCH"]` | Allowed capabilities |
| podSecurity.fsGroupChangePolicy | string | `"OnRootMismatch"` | Policy for changing ownership and permissions of volumes. Only takes effect when fsGroup is also set. "OnRootMismatch" only changes permissions if the root dir doesn't match, "Always" recursively changes on every pod start. |
| podSecurity.privileged | bool | `false` | If true, allow to run privileged containers. If eBPF tracer is enabled, this will be automatically true |
| podSecurity.seLinuxContext | object | Must run as spc_t (For reference, please refer here: https://access.redhat.com/solutions/7025337) | Provide seLinuxContext configuration for SCC |
| podSecurity.seccompProfiles | list | `["runtime/default"]` | Allowed seccomp profiles |
| podSecurity.securityContextConstraints.create | bool | `false` | If true, create a SecurityContextConstraints resource for pods |
| podSecurity.volumes | list | `["configMap","downwardAPI","emptyDir","hostPath","secret"]` | Allowed volumes types |
| priorityClassName | string | `""` |  |
| priorityClasses | string | `nil` |  |
| profilerPort | string | `""` |  |
| promPort | string | `""` |  |
| repository | string | `"gcr.io/edgedelta"` |  |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| secretApiKey.enable | bool | `false` |  |
| secretApiKey.key | string | `"ed-api-key"` |  |
| secretApiKey.name | string | `""` |  |
| secretApiKey.value | string | `""` |  |
| serviceAccount.annotations | object | `{}` | Annotations for the service account |
| serviceAccount.labels | object | `{}` | Labels for the service account |
| skipCommonLabels | bool | `false` |  |
| storePort | string | `""` |  |
| tolerations | object | `{}` |  |
| topologySpreadConstraints | list | `[]` | Topology spread constraints for coordinator agent |
| updateStrategy.rollingUpdate.maxUnavailable | int | `1` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| watcherProps.checkInterval | string | `""` |  |
| watcherProps.enabled | bool | `false` |  |
| watcherProps.resources.limits.cpu | string | `"200m"` |  |
| watcherProps.resources.limits.memory | string | `"256Mi"` |  |
| watcherProps.resources.requests.cpu | string | `"50m"` |  |
| watcherProps.resources.requests.memory | string | `"64Mi"` |  |
| watcherProps.targetContainerName | string | `""` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
