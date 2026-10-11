variable "ingress_lookup" {
  description = <<EOT
Map of ingress_lookup, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - name (optional)
        - namespace (optional)
EOT

  type = map(object({
    metadata = object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      name        = optional(string)
      namespace   = optional(string)
    })
  }))
}

