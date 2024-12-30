# edgedelta

![Version: 1.26.0](https://img.shields.io/badge/Version-1.26.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.26.0](https://img.shields.io/badge/AppVersion-v1.26.0-informational?style=flat-square)

Edge Delta Agent Chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| agentProps.image.pullPolicy | string | `"IfNotPresent"` |  |
| agentTroubleshooter.image | string | `"gcr.io/edgedelta/agent-troubleshooter:latest"` |  |
| agentTroubleshooter.symptomCollector.checkInterval | string | `""` |  |
| agentTroubleshooter.symptomCollector.enabled | bool | `false` |  |
| agentTroubleshooter.symptomCollector.logLineCount | int | `1000` |  |
| agentTroubleshooter.symptomCollector.loggingLevel | string | `"info"` |  |
| agentTroubleshooter.symptomCollector.reportInterval | string | `""` |  |
| agentTroubleshooter.symptomCollector.resources.limits.cpu | string | `"200m"` |  |
| agentTroubleshooter.symptomCollector.resources.limits.memory | string | `"200Mi"` |  |
| agentTroubleshooter.symptomCollector.resources.requests.cpu | string | `"100m"` |  |
| agentTroubleshooter.symptomCollector.resources.requests.memory | string | `"100Mi"` |  |
| agentUpdater.baseURL | string | `"https://api.edgedelta.com/v1"` |  |
| agentUpdater.enabled | bool | `false` |  |
| agentUpdater.image | string | `"gcr.io/edgedelta/agent-updater:latest"` |  |
| agentUpdater.latestTagEndpoint | string | `"/versioning/latest"` |  |
| agentUpdater.logUploader.enabled | bool | `true` |  |
| agentUpdater.logUploader.presignedUploadURLEndpoint | string | `"/agent_updater/self_logs_upload_link"` |  |
| agentUpdater.metadataEndpoint | string | `"/agent_updater/metadata"` |  |
| aggregatorProps.enabled | bool | `false` |  |
| aggregatorProps.enabledDataTypes.cluster_pattern_and_sample | bool | `false` |  |
| aggregatorProps.enabledDataTypes.metric | bool | `true` |  |
| aggregatorProps.enabledDataTypes.topk | bool | `false` |  |
| aggregatorProps.goMemLimit | string | `""` |  |
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
| compactorProps.autoscaling.behavior | object | `{"scaleDown":{"stabilizationWindowSeconds":300}}` | Configure separate scale-up and scale-down behaviors |
| compactorProps.autoscaling.customMetric | object | `{}` | For any custom metrics for targeting, one can use this section |
| compactorProps.autoscaling.enabled | bool | `false` | Create a [HorizontalPodAutoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) for compactor agents |
| compactorProps.autoscaling.external | bool | `false` | Set to `true` if using an external autoscaler like [KEDA](https://keda.sh/) |
| compactorProps.autoscaling.maxReplicas | int | `10` | Maximum replica count for rollup agents |
| compactorProps.autoscaling.minReplicas | int | `1` | Minimum replica count for rollup agents |
| compactorProps.autoscaling.targetForCPUUtilizationPercentage | int | `85` | Targeted CPU utilization for rollup agents in order to HPA to kick in |
| compactorProps.autoscaling.targetForMemoryUtilizationPercentage | string | `nil` | Targeted Memory utilization for rollup agents in order to HPA to kick in |
| compactorProps.diskSize | string | `"30Gi"` |  |
| compactorProps.enabled | bool | `true` |  |
| compactorProps.goMemLimit | string | `""` |  |
| compactorProps.image.pullPolicy | string | `"IfNotPresent"` |  |
| compactorProps.nodeSelector | object | `{}` |  |
| compactorProps.podManagementPolicy | string | `"OrderedReady"` |  |
| compactorProps.port | int | `9199` |  |
| compactorProps.priorityClassName | string | `""` |  |
| compactorProps.replicas | int | `1` | Number of compactor agents to be created statically, mutually exclusive with autoscaling |
| compactorProps.resources.limits.cpu | string | `"2000m"` |  |
| compactorProps.resources.limits.memory | string | `"2Gi"` |  |
| compactorProps.resources.requests.cpu | string | `"200m"` |  |
| compactorProps.resources.requests.memory | string | `"300Mi"` |  |
| compactorProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
| compactorProps.storageClass | string | `""` |  |
| compactorProps.tolerations | object | `{}` |  |
| compactorProps.topologySpreadConstraints | list | `[]` | Topology spread constraints for compactor agents |
| compactorProps.traceFiles | string | `""` |  |
| compactorProps.updateStrategy.type | string | `"RollingUpdate"` |  |
| compactorProps.usePVC | bool | `false` |  |
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
| httpRecorderProps.image.fullPath | string | `"gcr.io/edgedelta/httprecorder:latest"` |  |
| httpRecorderProps.image.pullPolicy | string | `"IfNotPresent"` |  |
| httpRecorderProps.port | int | `8080` |  |
| httpsProxy | string | `""` |  |
| image.fullPath | string | `""` |  |
| image.name | string | `"gcr.io/edgedelta/agent"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
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
| ports | list | `[]` |  |
| priorityClassName | string | `""` |  |
| profilerPort | string | `""` |  |
| promPort | string | `""` |  |
| pushService.annotations | object | `{}` |  |
| pushService.clusterIP | string | `""` |  |
| pushService.loadBalancerIP | string | `""` |  |
| pushService.sessionAffinity | string | `""` |  |
| pushService.sessionAffinityTimeout | int | `10800` |  |
| pushService.type | string | `"ClusterIP"` |  |
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
| rollUpProps.goMemLimit | string | `"900MiB"` |  |
| rollUpProps.image.pullPolicy | string | `"IfNotPresent"` |  |
| rollUpProps.nodeSelector | object | `{}` |  |
| rollUpProps.podManagementPolicy | string | `"OrderedReady"` |  |
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
| secretApiKey.name | string | `"ed-api-key"` |  |
| secretApiKey.value | string | `""` |  |
| serviceMonitor | object | `{"enabled":false}` | it will be used enable prometheus to scrape metrics from processor agents |
| serviceMonitor.enabled | bool | `false` | If true, create ServiceMonitor for processor agents |
| skipCommonLabels | bool | `false` |  |
| storePort | string | `""` |  |
| tolerations | object | `{}` |  |
| tracerProps.enabled | bool | `true` |  |
| tracerProps.port | int | `9595` |  |
| updateStrategy.rollingUpdate.maxUnavailable | int | `1` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
