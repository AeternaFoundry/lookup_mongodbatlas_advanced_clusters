data "mongodbatlas_advanced_clusters" "advanced_clusters_lookup" {
  for_each = var.advanced_clusters_lookup

  project_id           = each.value.project_id
  use_effective_fields = each.value.use_effective_fields
}

