# edgedelta-gateway

![Version: 2.21.0](https://img.shields.io/badge/Version-2.21.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.21.0](https://img.shields.io/badge/AppVersion-v2.21.0-informational?style=flat-square)

Edge Delta Gateway Agent Chart for Kubernetes

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
| clusterRoleRules[0].resources[7] | string | `"endpoints"` |  |
| clusterRoleRules[0].verbs[0] | string | `"get"` |  |
| clusterRoleRules[0].verbs[1] | string | `"watch"` |  |
| clusterRoleRules[0].verbs[2] | string | `"list"` |  |
| clusterRoleRules[1].apiGroups[0] | string | `""` |  |
| clusterRoleRules[1].resources[0] | string | `"events"` |  |
| clusterRoleRules[1].verbs[0] | string | `"create"` |  |
| clusterRoleRules[2].apiGroups[0] | string | `"discovery.k8s.io"` |  |
| clusterRoleRules[2].resources[0] | string | `"endpointslices"` |  |
| clusterRoleRules[2].verbs[0] | string | `"get"` |  |
| clusterRoleRules[2].verbs[1] | string | `"watch"` |  |
| clusterRoleRules[2].verbs[2] | string | `"list"` |  |
| clusterRoleRules[3].apiGroups[0] | string | `"coordination.k8s.io"` |  |
| clusterRoleRules[3].resources[0] | string | `"leases"` |  |
| clusterRoleRules[3].verbs[0] | string | `"get"` |  |
| clusterRoleRules[3].verbs[1] | string | `"list"` |  |
| clusterRoleRules[3].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[3].verbs[3] | string | `"create"` |  |
| clusterRoleRules[3].verbs[4] | string | `"update"` |  |
| clusterRoleRules[3].verbs[5] | string | `"patch"` |  |
| clusterRoleRules[3].verbs[6] | string | `"delete"` |  |
| clusterRoleRules[4].apiGroups[0] | string | `"metrics.k8s.io"` |  |
| clusterRoleRules[4].resources[0] | string | `"pods"` |  |
| clusterRoleRules[4].resources[1] | string | `"nodes"` |  |
| clusterRoleRules[4].verbs[0] | string | `"get"` |  |
| clusterRoleRules[4].verbs[1] | string | `"list"` |  |
| clusterRoleRules[4].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[5].apiGroups[0] | string | `"apps"` |  |
| clusterRoleRules[5].resources[0] | string | `"daemonsets"` |  |
| clusterRoleRules[5].resources[1] | string | `"deployments"` |  |
| clusterRoleRules[5].resources[2] | string | `"replicasets"` |  |
| clusterRoleRules[5].resources[3] | string | `"statefulsets"` |  |
| clusterRoleRules[5].verbs[0] | string | `"watch"` |  |
| clusterRoleRules[5].verbs[1] | string | `"list"` |  |
| clusterRoleRules[6].apiGroups[0] | string | `"batch"` |  |
| clusterRoleRules[6].resources[0] | string | `"jobs"` |  |
| clusterRoleRules[6].resources[1] | string | `"cronjobs"` |  |
| clusterRoleRules[6].verbs[0] | string | `"watch"` |  |
| clusterRoleRules[6].verbs[1] | string | `"list"` |  |
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
| compactorProps.nodeSelector | object | `{}` |  |
| compactorProps.podSecurity.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| compactorProps.port | int | `9199` |  |
| compactorProps.priorityClassName | string | `""` |  |
| compactorProps.replicas | int | `1` | Number of compactor agents to be created statically, mutually exclusive with autoscaling |
| compactorProps.resources.limits.cpu | string | `"2000m"` |  |
| compactorProps.resources.limits.memory | string | `"2Gi"` |  |
| compactorProps.resources.requests.cpu | string | `"200m"` |  |
| compactorProps.resources.requests.memory | string | `"300Mi"` |  |
| compactorProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
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
| deployment.replicas | int | `2` | Number of pods of the deployment. Mutually exclusive with autoscaling |
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
| repository | string | `"gcr.io/edgedelta"` |  |
| resources.limits.cpu | string | `"2000m"` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
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
| rollUpProps.nodeSelector | object | `{}` |  |
| rollUpProps.podSecurity.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| rollUpProps.port | int | `9200` |  |
| rollUpProps.priorityClassName | string | `""` |  |
| rollUpProps.replicas | int | `2` |  |
| rollUpProps.resources.limits.cpu | string | `"1000m"` |  |
| rollUpProps.resources.limits.memory | string | `"1Gi"` |  |
| rollUpProps.resources.requests.cpu | string | `"200m"` |  |
| rollUpProps.resources.requests.memory | string | `"256Mi"` |  |
| rollUpProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
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
