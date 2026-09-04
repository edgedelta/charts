# edgedelta-coordinator

![Version: 2.24.0](https://img.shields.io/badge/Version-2.24.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.24.0](https://img.shields.io/badge/AppVersion-v2.24.0-informational?style=flat-square)

Edge Delta Coordinator Agent Chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalClusterRoleRules | list | `[]` | ClusterRole rules added to clusterRoleRules, for custom resources such as ArgoCD or Prometheus Operator CRDs. Each rule optionally accepts resourceNames to restrict it to specific named resources. See the example above. |
| additionalRoleRules | list | `[]` | Role rules added to roleRules, for namespaced custom resources. Each rule optionally accepts resourceNames to restrict it to specific named resources. See the example above. |
| annotations | object | `{}` |  |
| apiKey | string | `""` |  |
| clusterRoleRules | list | see the clusterRoleRules list in values.yaml | RBAC rules of the ClusterRole created when rbac.scope is cluster. Customize these rules to match your cluster's security requirements. Each rule optionally accepts resourceNames to restrict it to specific named resources. |
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
| lifecycle | object | `{}` |  |
| livenessProbe | object | `{}` |  |
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
| rbac.scope | string | `"cluster"` | Scope of the RBAC resources created for the EdgeDelta coordinator. Supported values are cluster and namespace. cluster creates a ClusterRole and ClusterRoleBinding from clusterRoleRules below. namespace creates a Role and RoleBinding in the release namespace from roleRules below. |
| readinessProbe | object | `{}` |  |
| repository | string | `"gcr.io/edgedelta"` |  |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| roleRules | list | see the roleRules list in values.yaml | RBAC rules of the Role created when rbac.scope is namespace. A Role cannot grant access to cluster-scoped resources, so node level metrics and cluster wide discovery are not available with namespace scope. Each rule optionally accepts resourceNames to restrict it to specific named resources. |
| secretApiKey.enable | bool | `false` |  |
| secretApiKey.key | string | `"ed-api-key"` |  |
| secretApiKey.name | string | `""` |  |
| secretApiKey.value | string | `""` |  |
| serviceAccount.annotations | object | `{}` | Annotations for the service account |
| serviceAccount.labels | object | `{}` | Labels for the service account |
| skipCommonLabels | bool | `false` |  |
| startupProbe | object | `{}` |  |
| storePort | string | `""` |  |
| terminationGracePeriodSeconds | int | `10` |  |
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
