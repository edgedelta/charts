# edgedelta

![Version: 2.16.0](https://img.shields.io/badge/Version-2.16.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.16.0](https://img.shields.io/badge/AppVersion-v2.16.0-informational?style=flat-square)

Edge Delta Agent Chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalClusterRoleRules | list | `[]` |  |
| aggregatorProps.enabled | bool | `false` |  |
| aggregatorProps.enabledDataTypes.cluster_pattern_and_sample | bool | `false` |  |
| aggregatorProps.enabledDataTypes.metric | bool | `true` |  |
| aggregatorProps.enabledDataTypes.topk | bool | `false` |  |
| aggregatorProps.goMemLimit | string | `""` |  |
| aggregatorProps.podSecurity.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| aggregatorProps.port | int | `9191` |  |
| aggregatorProps.resources.limits.cpu | string | `"2000m"` |  |
| aggregatorProps.resources.limits.memory | string | `"2048Mi"` |  |
| aggregatorProps.resources.requests.cpu | string | `"200m"` |  |
| aggregatorProps.resources.requests.memory | string | `"256Mi"` |  |
| aggregatorProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
| aggregatorProps.storageClassName | string | `""` |  |
| aggregatorProps.usePersistentVolume | bool | `false` |  |
| annotations | object | `{}` |  |
| apiKey | string | `""` |  |
| clusterRoleRules[0].apiGroups[0] | string | `""` |  |
| clusterRoleRules[0].resources[0] | string | `"namespaces"` |  |
| clusterRoleRules[0].resources[10] | string | `"replicationcontrollers"` |  |
| clusterRoleRules[0].resources[11] | string | `"serviceaccounts"` |  |
| clusterRoleRules[0].resources[12] | string | `"persistentvolumes"` |  |
| clusterRoleRules[0].resources[1] | string | `"pods"` |  |
| clusterRoleRules[0].resources[2] | string | `"pods/log"` |  |
| clusterRoleRules[0].resources[3] | string | `"events"` |  |
| clusterRoleRules[0].resources[4] | string | `"nodes"` |  |
| clusterRoleRules[0].resources[5] | string | `"nodes/metrics"` |  |
| clusterRoleRules[0].resources[6] | string | `"services"` |  |
| clusterRoleRules[0].resources[7] | string | `"endpoints"` |  |
| clusterRoleRules[0].resources[8] | string | `"configmaps"` |  |
| clusterRoleRules[0].resources[9] | string | `"secrets"` |  |
| clusterRoleRules[0].verbs[0] | string | `"get"` |  |
| clusterRoleRules[0].verbs[1] | string | `"watch"` |  |
| clusterRoleRules[0].verbs[2] | string | `"list"` |  |
| clusterRoleRules[10].apiGroups[0] | string | `"batch"` |  |
| clusterRoleRules[10].resources[0] | string | `"jobs"` |  |
| clusterRoleRules[10].resources[1] | string | `"cronjobs"` |  |
| clusterRoleRules[10].verbs[0] | string | `"get"` |  |
| clusterRoleRules[10].verbs[1] | string | `"list"` |  |
| clusterRoleRules[10].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[1].apiGroups[0] | string | `""` |  |
| clusterRoleRules[1].resources[0] | string | `"events"` |  |
| clusterRoleRules[1].verbs[0] | string | `"create"` |  |
| clusterRoleRules[2].apiGroups[0] | string | `"events.k8s.io"` |  |
| clusterRoleRules[2].resources[0] | string | `"events"` |  |
| clusterRoleRules[2].verbs[0] | string | `"get"` |  |
| clusterRoleRules[2].verbs[1] | string | `"watch"` |  |
| clusterRoleRules[2].verbs[2] | string | `"list"` |  |
| clusterRoleRules[3].apiGroups[0] | string | `"discovery.k8s.io"` |  |
| clusterRoleRules[3].resources[0] | string | `"endpointslices"` |  |
| clusterRoleRules[3].verbs[0] | string | `"get"` |  |
| clusterRoleRules[3].verbs[1] | string | `"watch"` |  |
| clusterRoleRules[3].verbs[2] | string | `"list"` |  |
| clusterRoleRules[4].apiGroups[0] | string | `"coordination.k8s.io"` |  |
| clusterRoleRules[4].resources[0] | string | `"leases"` |  |
| clusterRoleRules[4].verbs[0] | string | `"get"` |  |
| clusterRoleRules[4].verbs[1] | string | `"list"` |  |
| clusterRoleRules[4].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[4].verbs[3] | string | `"create"` |  |
| clusterRoleRules[4].verbs[4] | string | `"update"` |  |
| clusterRoleRules[4].verbs[5] | string | `"patch"` |  |
| clusterRoleRules[4].verbs[6] | string | `"delete"` |  |
| clusterRoleRules[5].apiGroups[0] | string | `"metrics.k8s.io"` |  |
| clusterRoleRules[5].resources[0] | string | `"pods"` |  |
| clusterRoleRules[5].resources[1] | string | `"nodes"` |  |
| clusterRoleRules[5].verbs[0] | string | `"get"` |  |
| clusterRoleRules[5].verbs[1] | string | `"list"` |  |
| clusterRoleRules[5].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[6].apiGroups[0] | string | `"autoscaling"` |  |
| clusterRoleRules[6].resources[0] | string | `"horizontalpodautoscalers"` |  |
| clusterRoleRules[6].verbs[0] | string | `"get"` |  |
| clusterRoleRules[6].verbs[1] | string | `"list"` |  |
| clusterRoleRules[6].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[7].apiGroups[0] | string | `"networking.k8s.io"` |  |
| clusterRoleRules[7].resources[0] | string | `"ingresses"` |  |
| clusterRoleRules[7].verbs[0] | string | `"get"` |  |
| clusterRoleRules[7].verbs[1] | string | `"list"` |  |
| clusterRoleRules[7].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[8].apiGroups[0] | string | `"rbac.authorization.k8s.io"` |  |
| clusterRoleRules[8].resources[0] | string | `"clusterroles"` |  |
| clusterRoleRules[8].resources[1] | string | `"clusterrolebindings"` |  |
| clusterRoleRules[8].verbs[0] | string | `"get"` |  |
| clusterRoleRules[8].verbs[1] | string | `"list"` |  |
| clusterRoleRules[8].verbs[2] | string | `"watch"` |  |
| clusterRoleRules[9].apiGroups[0] | string | `"apps"` |  |
| clusterRoleRules[9].resources[0] | string | `"daemonsets"` |  |
| clusterRoleRules[9].resources[1] | string | `"deployments"` |  |
| clusterRoleRules[9].resources[2] | string | `"replicasets"` |  |
| clusterRoleRules[9].resources[3] | string | `"statefulsets"` |  |
| clusterRoleRules[9].verbs[0] | string | `"get"` |  |
| clusterRoleRules[9].verbs[1] | string | `"list"` |  |
| clusterRoleRules[9].verbs[2] | string | `"watch"` |  |
| compactorProps.autoscaling.behavior | object | `{"scaleDown":{"stabilizationWindowSeconds":300}}` | Configure separate scale-up and scale-down behaviors |
| compactorProps.autoscaling.customMetric | object | `{}` | For any custom metrics for targeting, one can use this section |
| compactorProps.autoscaling.enabled | bool | `false` | Create a [HorizontalPodAutoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) for compactor agents |
| compactorProps.autoscaling.external | bool | `false` | Set to `true` if using an external autoscaler like [KEDA](https://keda.sh/) |
| compactorProps.autoscaling.maxReplicas | int | `10` | Maximum replica count for compactor agents |
| compactorProps.autoscaling.minReplicas | int | `1` | Minimum replica count for compactor agents |
| compactorProps.autoscaling.targetForCPUUtilizationPercentage | int | `85` | Targeted CPU utilization for compactor agents in order to HPA to kick in |
| compactorProps.autoscaling.targetForMemoryUtilizationPercentage | string | `nil` | Targeted Memory utilization for compactor agents in order to HPA to kick in |
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
| deployment.autoscaling.behavior | object | `{"scaleDown":{"stabilizationWindowSeconds":300}}` | Configure separate scale-up and scale-down behaviors |
| deployment.autoscaling.customMetric | object | `{}` | For any custom metrics for targeting, one can use this section |
| deployment.autoscaling.enabled | bool | `false` | Create a [HorizontalPodAutoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) for processor agents |
| deployment.autoscaling.external | bool | `false` | Set to `true` if using an external autoscaler like [KEDA](https://keda.sh/) |
| deployment.autoscaling.maxReplicas | int | `10` | Maximum replica count for rollup agents |
| deployment.autoscaling.minReplicas | int | `1` | Minimum replica count for rollup agents |
| deployment.autoscaling.targetForCPUUtilizationPercentage | int | `85` | Targeted CPU utilization for rollup agents in order to HPA to kick in |
| deployment.autoscaling.targetForMemoryUtilizationPercentage | string | `nil` | Targeted Memory utilization for rollup agents in order to HPA to kick in |
| deployment.kind | string | `"DaemonSet"` | Can be either DaemonSet or Deployment |
| deployment.replicas | int | `1` | Number of pods of the deployment (only applies when kind == Deployment). Mutually exclusive with autoscaling |
| deployment.topologySpreadConstraints | list | `[]` | Topology spread constraints for processor agents while in Deployment mode |
| dockerContainerProps.hostPath | string | `"/var/lib/docker/containers"` |  |
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
| forceReinstallApplications.enabled | bool | `true` | When set to true, it will delete some of the K8s applications to be reinstalled again |
| fullnameOverride | string | `""` | Override the full name of resources. |
| goMemLimit | string | `""` |  |
| httpProxy | string | `""` |  |
| httpRecorderProps.enabled | bool | `false` |  |
| httpRecorderProps.image.fullPath | string | `""` |  |
| httpRecorderProps.image.name | string | `"httprecorder"` |  |
| httpRecorderProps.image.pullPolicy | string | `"IfNotPresent"` |  |
| httpRecorderProps.image.tag | string | `"latest"` |  |
| httpRecorderProps.port | int | `8080` |  |
| httpsProxy | string | `""` |  |
| image.fullPath | string | `""` |  |
| image.name | string | `"agent"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.tag | string | `""` |  |
| ingress.annotations | object | `{}` | Set annotations for further ingress configuration |
| ingress.class | string | `""` | Specify the [ingressClassName](https://kubernetes.io/docs/concepts/services-networking/ingress/#ingress-class) |
| ingress.enabled | bool | `false` | If set to true, we will create and use an Ingress resource |
| ingress.hosts | list | `[]` | Configure the hosts and paths |
| ingress.tls | list | `[]` | TLS configurations |
| instructionURL | string | `"https://app.edgedelta.com"` |  |
| nameOverride | string | `""` | Override the name of resources. |
| networkPolicy | object | `{"cilium":{"dnsSelector":{"toEndpoints":[{"matchLabels":{"k8s:io.kubernetes.pod.namespace":"kube-system","k8s:k8s-app":"kube-dns"}}]}},"enabled":false,"type":"cilium"}` | Manage NetworkPolicy |
| networkPolicy.cilium.dnsSelector | object | kube-dns in namespace kube-system | Cilium selector of the DNS server entity |
| networkPolicy.enabled | bool | `false` | If true, create NetworkPolicy for DaemonSet |
| networkPolicy.type | string | `"cilium"` | Type of the network policy to use. Can be: * cilium     for cilium.io/v2/CiliumNetworkPolicy |
| noProxy | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistingCursorProps.containerMountPath | string | `"/var/lib/edgedelta"` |  |
| persistingCursorProps.enabled | bool | `true` |  |
| persistingCursorProps.hostMountPath | string | `"/var/lib/edgedelta"` |  |
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
| pushService.annotations | object | `{}` |  |
| pushService.clusterIP | string | `""` |  |
| pushService.loadBalancerIP | string | `""` |  |
| pushService.sessionAffinity | string | `""` |  |
| pushService.sessionAffinityTimeout | int | `10800` |  |
| pushService.type | string | `"ClusterIP"` |  |
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
| targetAllocator.configuration.config.scrape_configs[0].job_name | string | `"ed-agent-collector"` |  |
| targetAllocator.configuration.config.scrape_configs[0].scrape_interval | string | `"10s"` |  |
| targetAllocator.configuration.config.scrape_configs[0].static_configs[0].targets[0] | string | `"0.0.0.0:8888"` |  |
| targetAllocator.configuration.filter_strategy | string | `"relabel-config"` |  |
| targetAllocator.configuration.prometheus_cr | object | `{}` |  |
| targetAllocator.enabled | bool | `false` |  |
| targetAllocator.image.fullPath | string | `""` |  |
| targetAllocator.image.name | string | `"target-allocator"` |  |
| targetAllocator.image.pullPolicy | string | `"IfNotPresent"` |  |
| targetAllocator.image.pullSecrets | list | `[]` |  |
| targetAllocator.image.tag | string | `"v0.1.1"` |  |
| targetAllocator.nodeSelector | object | `{}` |  |
| targetAllocator.port | int | `8080` |  |
| targetAllocator.priorityClassName | string | `""` |  |
| targetAllocator.replicas | int | `1` |  |
| targetAllocator.resources.limits.cpu | string | `"1000m"` |  |
| targetAllocator.resources.limits.memory | string | `"1Gi"` |  |
| targetAllocator.resources.requests.cpu | string | `"200m"` |  |
| targetAllocator.resources.requests.memory | string | `"256Mi"` |  |
| targetAllocator.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
| targetAllocator.tolerations | object | `{}` |  |
| targetAllocator.topologySpreadConstraints | list | `[]` | Topology spread constraints for target allocator |
| targetAllocator.updateStrategy.rollingUpdate.maxSurge | int | `1` |  |
| targetAllocator.updateStrategy.rollingUpdate.maxUnavailable | int | `0` |  |
| targetAllocator.updateStrategy.type | string | `"RollingUpdate"` |  |
| tolerations | object | `{}` |  |
| tracerProps.enabled | bool | `true` |  |
| tracerProps.port | int | `9595` |  |
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
