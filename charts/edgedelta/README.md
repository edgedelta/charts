# edgedelta

![Version: 0.1.68](https://img.shields.io/badge/Version-0.1.68-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.68](https://img.shields.io/badge/AppVersion-v0.1.68-informational?style=flat-square)

Edge Delta Agent Chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
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
| aggregatorProps.goMemLimit | string | `""` |  |
| aggregatorProps.port | int | `9191` |  |
| aggregatorProps.resources.limits.memory | string | `"2048Mi"` |  |
| aggregatorProps.resources.requests.cpu | string | `"200m"` |  |
| aggregatorProps.resources.requests.memory | string | `"256Mi"` |  |
| aggregatorProps.serviceDNSSuffix | string | `"svc.cluster.local"` |  |
| aggregatorProps.storageClassName | string | `""` |  |
| aggregatorProps.usePersistentVolume | bool | `false` |  |
| annotations | object | `{}` |  |
| apiKey | string | `""` |  |
| archiverProps.diskSize | string | `"10Gi"` |  |
| archiverProps.enabled | bool | `false` |  |
| archiverProps.goMemLimit | string | `""` |  |
| archiverProps.port | int | `9292` |  |
| archiverProps.resources.limits.memory | string | `"2048Mi"` |  |
| archiverProps.resources.requests.cpu | string | `"200m"` |  |
| archiverProps.resources.requests.memory | string | `"256Mi"` |  |
| archiverProps.storageClassName | string | `""` |  |
| dataPort | string | `""` |  |
| deployment.kind | string | `"DaemonSet"` |  |
| deployment.replicas | int | `1` |  |
| dockerContainerProps.hostPath | string | `"/var/lib/docker/containers"` |  |
| edAggregatorTraceFiles | string | `""` |  |
| edArchiverTraceFiles | string | `""` |  |
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
| fullnameOverride | string | `""` |  |
| goMemLimit | string | `""` |  |
| httpProxy | string | `""` |  |
| httpRecorderProps.enabled | bool | `false` |  |
| httpRecorderProps.image | string | `"gcr.io/edgedelta/httprecorder:latest"` |  |
| httpRecorderProps.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| httpRecorderProps.ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| httpRecorderProps.ingress.class | string | `"nginx"` |  |
| httpRecorderProps.ingress.enabled | bool | `false` |  |
| httpRecorderProps.ingress.host | string | `""` |  |
| httpRecorderProps.port | int | `8080` |  |
| httpsProxy | string | `""` |  |
| image.fullPath | string | `""` |  |
| image.name | string | `"gcr.io/edgedelta/agent"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| instructionURL | string | `"https://app.edgedelta.com"` |  |
| nameOverride | string | `""` |  |
| networkPolicy.cilium.dnsSelector | object | kube-dns in namespace kube-system | Cilium selector of the DNS server entity |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.type | string | `"cilium"` | Type of the network policy to use. Can be: * cilium     for cilium.io/v2/CiliumNetworkPolicy |
| noProxy | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistingCursorProps.containerMountPath | string | `"/var/lib/edgedelta"` |  |
| persistingCursorProps.enabled | bool | `false` |  |
| persistingCursorProps.hostMountPath | string | `"/var/lib/edgedelta"` |  |
| priorityClassName | string | `""` |  |
| profilerPort | string | `""` |  |
| promPort | string | `""` |  |
| resources.limits.memory | string | `"2048Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| secretApiKey.key | string | `"ed-api-key"` |  |
| secretApiKey.name | string | `"ed-api-key"` |  |
| secretApiKey.value | string | `""` |  |
| serviceMonitor.enabled | bool | `false` |  |
| storePort | string | `""` |  |
| tolerations | object | `{}` |  |
| tracerProps.enabled | bool | `false` |  |
| tracerProps.port | int | `9595` |  |
| updateStrategy.rollingUpdate.maxUnavailable | int | `1` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
