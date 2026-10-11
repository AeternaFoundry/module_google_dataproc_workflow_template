output "dataproc_workflow_templates_id" {
  description = "Map of id values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no id are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataproc_workflow_templates_create_time" {
  description = "Map of create_time values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no create_time are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "dataproc_workflow_templates_dag_timeout" {
  description = "Map of dag_timeout values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no dag_timeout are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.dag_timeout if v.dag_timeout != null && length(v.dag_timeout) > 0 }
}
output "dataproc_workflow_templates_deletion_policy" {
  description = "Map of deletion_policy values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataproc_workflow_templates_effective_labels" {
  description = "Map of effective_labels values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no effective_labels are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "dataproc_workflow_templates_encryption_config" {
  description = "Map of encryption_config values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no encryption_config are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => one(v.encryption_config) if v.encryption_config != null && length(v.encryption_config) > 0 }
}
output "dataproc_workflow_templates_jobs" {
  description = "Map of jobs values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no jobs are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.jobs if v.jobs != null && length(v.jobs) > 0 }
}
output "dataproc_workflow_templates_labels" {
  description = "Map of labels values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no labels are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "dataproc_workflow_templates_location" {
  description = "Map of location values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no location are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dataproc_workflow_templates_name" {
  description = "Map of name values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no name are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataproc_workflow_templates_parameters" {
  description = "Map of parameters values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no parameters are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "dataproc_workflow_templates_placement" {
  description = "Map of placement values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no placement are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => one(v.placement) if v.placement != null && length(v.placement) > 0 }
}
output "dataproc_workflow_templates_project" {
  description = "Map of project values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no project are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataproc_workflow_templates_terraform_labels" {
  description = "Map of terraform_labels values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no terraform_labels are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "dataproc_workflow_templates_update_time" {
  description = "Map of update_time values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no update_time are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "dataproc_workflow_templates_version" {
  description = "Map of version values across all dataproc_workflow_templates, keyed the same as var.dataproc_workflow_templates except keys with no version are omitted"
  value       = { for k, v in google_dataproc_workflow_template.dataproc_workflow_templates : k => v.version if v.version != null }
}

