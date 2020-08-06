{
  local templated = (import 'templated.libsonnet') { _config+:: $._config },

  cainjector_deployment: templated.configureHelmChart(importstr 'templates/cainjector-deployment.yaml'),
  cainjector_psp_clusterrolebinding: templated.configureHelmChart(importstr 'templates/cainjector-psp-clusterrolebinding.yaml'),
  cainjector_psp_clusterrole: templated.configureHelmChart(importstr 'templates/cainjector-psp-clusterrole.yaml'),
  cainjector_psp: templated.configureHelmChart(importstr 'templates/cainjector-psp.yaml'),
  cainjector_rbac: templated.configureHelmChart(importstr 'templates/cainjector-rbac.yaml'),
  cainjector_serviceaccount: templated.configureHelmChart(importstr 'templates/cainjector-serviceaccount.yaml'),
  deployment: templated.configureHelmChart(importstr 'templates/deployment.yaml'),
  psp_clusterrolebinding: templated.configureHelmChart(importstr 'templates/psp-clusterrolebinding.yaml'),
  psp_clusterrole: templated.configureHelmChart(importstr 'templates/psp-clusterrole.yaml'),
  psp: templated.configureHelmChart(importstr 'templates/psp.yaml'),
  rbac: templated.configureHelmChart(importstr 'templates/rbac.yaml'),
  serviceaccount: templated.configureHelmChart(importstr 'templates/serviceaccount.yaml'),
  service: templated.configureHelmChart(importstr 'templates/service.yaml'),
  webhook_deployment: templated.configureHelmChart(importstr 'templates/webhook-deployment.yaml'),
  webhook_mutating_webhook: templated.configureHelmChart(importstr 'templates/webhook-mutating-webhook.yaml'),
  webhook_psp_clusterrolebinding: templated.configureHelmChart(importstr 'templates/webhook-psp-clusterrolebinding.yaml'),
  webhook_psp_clusterrole: templated.configureHelmChart(importstr 'templates/webhook-psp-clusterrole.yaml'),
  webhook_psp: templated.configureHelmChart(importstr 'templates/webhook-psp.yaml'),
  webhook_rbac: templated.configureHelmChart(importstr 'templates/webhook-rbac.yaml'),
  webhook_serviceaccount: templated.configureHelmChart(importstr 'templates/webhook-serviceaccount.yaml'),
  webhook_service: templated.configureHelmChart(importstr 'templates/webhook-service.yaml'),
  webhook_validating_webhook: templated.configureHelmChart(importstr 'templates/webhook-validating-webhook.yaml'),
}