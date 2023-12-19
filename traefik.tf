resource "helm_release" "traefik" {
  count            = var.enable_traefik_helm_release ? 1 : 0
  name             = var.traefik_helm_release_name
  namespace        = var.traefik_k8s_namespace
  repository       = var.traefik_helm_repo
  chart            = var.traefik_helm_chart
  version          = var.traefik_helm_chart_version
  timeout          = var.traefik_helm_chart_timeout_seconds
  create_namespace = true
}