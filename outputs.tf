output "advanced_clusters_lookup_project_id" {
  description = "Map of project_id values across all advanced_clusters_lookup, keyed the same as var.advanced_clusters_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_advanced_clusters.advanced_clusters_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "advanced_clusters_lookup_results" {
  description = "Map of results values across all advanced_clusters_lookup, keyed the same as var.advanced_clusters_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_advanced_clusters.advanced_clusters_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}
output "advanced_clusters_lookup_use_effective_fields" {
  description = "Map of use_effective_fields values across all advanced_clusters_lookup, keyed the same as var.advanced_clusters_lookup except keys with no use_effective_fields are omitted"
  value       = { for k, v in data.mongodbatlas_advanced_clusters.advanced_clusters_lookup : k => v.use_effective_fields if v.use_effective_fields != null }
}

