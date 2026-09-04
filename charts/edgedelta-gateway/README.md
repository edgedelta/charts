# edgedelta-gateway

![Version: 2.24.0](https://img.shields.io/badge/Version-2.24.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.24.0](https://img.shields.io/badge/AppVersion-v2.24.0-informational?style=flat-square)

Edge Delta Gateway Agent Chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalClusterRoleRules | list | `[]` | ClusterRole rules added to clusterRoleRules, for custom resources such as ArgoCD or Prometheus Operator CRDs. Each rule optionally accepts resourceNames to restrict it to specific named resources. See the example above. |
| additionalRoleRules | list | `[]` | Role rules added to roleRules, for namespaced custom resources. Each rule optionally accepts resourceNames to restrict it to specific named resources. See the example above. |
| annotations | object | `{}` |  |
| apiKey | string | `""` |  |
| clusterRoleRules | list | see the clusterRoleRules list in values.yaml | RBAC rules of the ClusterRole created when rbac.scope is cluster. Customize these rules to match your cluster's security requirements. Each rule optionally accepts resourceNames to restrict it to specific named resources. |
| compactorProps.autoscaling.behavior | object | `{"scaleDown":{"stabilizationWindowSeconds":300}}` | Configure separate scale-up and scale-down behaviors |
| compactorProps.autoscaling.customMetric | object | `{}` | For any custom metrics for targeting, one can use this section |
| compactorProps.autoscaling.enabled | bool | `false` | Create a [HorizontalPodAutoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) for compactor agents |
| compactorProps.autoscaling.external | bool | `false` | Set to `true` if using an external autoscaler like [KEDA](https://keda.sh/) |
| compactorProps.autoscaling.maxReplicas | int | `10` | Maximum replica count for rollup agents |
| compactorProps.autoscaling.minReplicas | int | `1` | Minimum replica count for rollup agents |
| compactorProps.autoscaling.targetForCPUUtilizationPercentage | int | `85` | Targeted CPU utilization for rollup agents in order to HPA to kick in |
| compactorProps.autoscaling.targetForMemoryUtilizationPercentage | string | `nil` | Targeted Memory utilization for rollup agents in order to HPA to kick in |
| compactorProps.enabled | bool | `true` |  |
| compactorProps.goMemLimit | string | `""` |  |
| compactorProps.lifecycle | object | `{}` |  |
| compactorProps.livenessProbe | object | `{}` |  |
| compactorProps.nodeSelector | object | `{}` |  |
| compactorProps.podDisruptionBudget | object | `{"enabled":false,"maxUnavailable":null,"minAvailable":null}` | Set exactly one of minAvailable or maxUnavailable. |
| compactorProps.podSecurity.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| compactorProps.port | int | `9199` |  |
| compactorProps.priorityClassName | string | `""` |  |
| compactorProps.readinessProbe | object | `{}` |  |
| compactorProps.replicas | int | `1` | Number of compactor agents to be created statically, mutually exclusive with autoscaling |
| compactorProps.resources.limits.cpu | string | `"2000m"` |  |
| compactorProps.resources.limits.memory | string | `"2Gi"` |  |
| compactorProps.resources.requests.cpu | string | `"200m"` |  |
| compactorProps.resources.requests.memory | string | `"300Mi"` |  |
| compactorProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
| compactorProps.startupProbe | object | `{}` |  |
| compactorProps.terminationGracePeriodSeconds | int | `60` |  |
| compactorProps.tolerations | object | `{}` |  |
| compactorProps.topologySpreadConstraints | list | `[]` | Topology spread constraints for compactor agents |
| compactorProps.traceFiles | string | `""` |  |
| compactorProps.updateStrategy.type | string | `"RollingUpdate"` |  |
| coordinatorProps.enabled | bool | `true` |  |
| coordinatorProps.endpoint | string | `""` |  |
| deployment.autoscaling.behavior | object | `{"scaleDown":{"stabilizationWindowSeconds":300},"scaleUp":{"policies":[{"periodSeconds":60,"type":"Percent","value":50}],"stabilizationWindowSeconds":60}}` | Configure separate scale-up and scale-down behaviors |
| deployment.autoscaling.customMetric | object | `{}` | For any custom metrics for targeting, one can use this section |
| deployment.autoscaling.enabled | bool | `false` | Create a [HorizontalPodAutoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) for processor agents |
| deployment.autoscaling.external | bool | `false` | Set to `true` if using an external autoscaler like [KEDA](https://keda.sh/) |
| deployment.autoscaling.maxReplicas | int | `10` | Maximum replica count for rollup agents |
| deployment.autoscaling.minReplicas | int | `1` | Minimum replica count for rollup agents |
| deployment.autoscaling.targetForCPUUtilizationPercentage | int | `85` | Targeted CPU utilization for rollup agents in order to HPA to kick in |
| deployment.autoscaling.targetForMemoryUtilizationPercentage | string | `nil` | Targeted Memory utilization for rollup agents in order to HPA to kick in |
| deployment.lifecycle | object | `{}` |  |
| deployment.livenessProbe | object | `{}` |  |
| deployment.podDisruptionBudget | object | `{"enabled":false,"maxUnavailable":null,"minAvailable":null}` | Set exactly one of minAvailable or maxUnavailable. |
| deployment.readinessProbe | object | `{}` |  |
| deployment.replicas | int | `2` | Number of pods of the deployment. Mutually exclusive with autoscaling |
| deployment.startupProbe | object | `{}` |  |
| deployment.terminationGracePeriodSeconds | int | `10` |  |
| deployment.topologySpreadConstraints | list | `[]` | Topology spread constraints for processor agents while in Deployment mode |
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
| podSecurity.apparmor.enabled | bool | `false` | If true, it will enable apparmor for the pods |
| podSecurity.apparmor.profile | string | `"unconfined"` | If apparmor enabled, it will be the profile for apparmor enforcement for the pods |
| podSecurity.capabilities | list | `["SYS_ADMIN","SYS_RESOURCE","SYS_PTRACE","NET_ADMIN","NET_BROADCAST","NET_RAW","IPC_LOCK","CHOWN","AUDIT_CONTROL","AUDIT_READ","DAC_READ_SEARCH"]` | Allowed capabilities |
| podSecurity.fsGroupChangePolicy | string | `"OnRootMismatch"` | Policy for changing ownership and permissions of volumes. Only takes effect when fsGroup is also set. "OnRootMismatch" only changes permissions if the root dir doesn't match, "Always" recursively changes on every pod start. |
| podSecurity.privileged | bool | `false` | If true, allow to run privileged containers. If eBPF tracer is enabled, this will be automatically true |
| podSecurity.seLinuxContext | object | Must run as spc_t (For reference, please refer here: https://access.redhat.com/solutions/7025337) | Provide seLinuxContext configuration for SCC |
| podSecurity.seccompProfiles | list | `["runtime/default"]` | Allowed seccomp profiles |
| podSecurity.securityContextConstraints.create | bool | `false` | If true, create a SecurityContextConstraints resource for pods |
| podSecurity.volumes | list | `["configMap","downwardAPI","emptyDir","hostPath","secret"]` | Allowed volumes types |
| ports | list | `[]` |  |
| priorityClassName | string | `""` |  |
| priorityClasses | string | `nil` |  |
| profilerPort | string | `""` |  |
| promPort | string | `""` |  |
| rbac.scope | string | `"cluster"` | Scope of the RBAC resources created for the EdgeDelta gateway. Supported values are cluster and namespace. cluster creates a ClusterRole and ClusterRoleBinding from clusterRoleRules below. namespace creates a Role and RoleBinding in the release namespace from roleRules below. |
| repository | string | `"gcr.io/edgedelta"` |  |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| roleRules | list | see the roleRules list in values.yaml | RBAC rules of the Role created when rbac.scope is namespace. A Role cannot grant access to cluster-scoped resources, so node level metrics and cluster wide discovery are not available with namespace scope. Each rule optionally accepts resourceNames to restrict it to specific named resources. |
| rollUpProps.autoscaling.behavior | object | `{"scaleDown":{"stabilizationWindowSeconds":300}}` | Configure separate scale-up and scale-down behaviors |
| rollUpProps.autoscaling.customMetric | object | `{}` | For any custom metrics for targeting, one can use this section |
| rollUpProps.autoscaling.enabled | bool | `false` | Create a [HorizontalPodAutoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) for rollup agents |
| rollUpProps.autoscaling.external | bool | `false` | Set to `true` if using an external autoscaler like [KEDA](https://keda.sh/) |
| rollUpProps.autoscaling.maxReplicas | int | `10` | Maximum replica count for rollup agents |
| rollUpProps.autoscaling.minReplicas | int | `2` | Minimum replica count for rollup agents |
| rollUpProps.autoscaling.targetForCPUUtilizationPercentage | int | `85` | Targeted CPU utilization for rollup agents in order to HPA to kick in |
| rollUpProps.autoscaling.targetForMemoryUtilizationPercentage | string | `nil` | Targeted Memory utilization for rollup agents in order to HPA to kick in |
| rollUpProps.enabled | bool | `true` |  |
| rollUpProps.goMemLimit | string | `""` |  |
| rollUpProps.lifecycle | object | `{}` |  |
| rollUpProps.livenessProbe | object | `{}` |  |
| rollUpProps.nodeSelector | object | `{}` |  |
| rollUpProps.podDisruptionBudget | object | `{"enabled":false,"maxUnavailable":null,"minAvailable":null}` | Set exactly one of minAvailable or maxUnavailable. |
| rollUpProps.podSecurity.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| rollUpProps.port | int | `9200` |  |
| rollUpProps.priorityClassName | string | `""` |  |
| rollUpProps.readinessProbe | object | `{}` |  |
| rollUpProps.replicas | int | `2` |  |
| rollUpProps.resources.limits.cpu | string | `"1000m"` |  |
| rollUpProps.resources.limits.memory | string | `"1Gi"` |  |
| rollUpProps.resources.requests.cpu | string | `"200m"` |  |
| rollUpProps.resources.requests.memory | string | `"256Mi"` |  |
| rollUpProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
| rollUpProps.startupProbe | object | `{}` |  |
| rollUpProps.terminationGracePeriodSeconds | int | `60` |  |
| rollUpProps.tolerations | object | `{}` |  |
| rollUpProps.topologySpreadConstraints | list | `[]` | Topology spread constraints for rollup agents |
| rollUpProps.updateStrategy.rollingUpdate.maxUnavailable | int | `1` |  |
| rollUpProps.updateStrategy.type | string | `"RollingUpdate"` |  |
| secretApiKey.enable | bool | `false` |  |
| secretApiKey.key | string | `"ed-api-key"` |  |
| secretApiKey.name | string | `""` |  |
| secretApiKey.value | string | `""` |  |
| serviceAccount.annotations | object | `{}` | Annotations for the service account |
| serviceAccount.labels | object | `{}` | Labels for the service account |
| serviceMonitor | object | `{"enabled":false}` | it will be used enable prometheus to scrape metrics from processor agents |
| serviceMonitor.enabled | bool | `false` | If true, create ServiceMonitor for processor agents |
| skipCommonLabels | bool | `false` |  |
| storePort | string | `""` |  |
| tolerations | object | `{}` |  |
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
