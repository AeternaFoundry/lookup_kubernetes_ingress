data "kubernetes_ingress" "ingress_lookup" {
  for_each = var.ingress_lookup


  metadata {
    annotations = each.value.metadata.annotations
    labels      = each.value.metadata.labels
    name        = each.value.metadata.name
    namespace   = each.value.metadata.namespace
  }
}

