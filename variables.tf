variable "advanced_clusters_lookup" {
  description = <<EOT
Map of advanced_clusters_lookup, attributes below
Required:
    - project_id
Optional:
    - use_effective_fields
EOT

  type = map(object({
    project_id           = string
    use_effective_fields = optional(bool)
  }))
}

