variable "google_cloud_project_id" {
  type = string
  description = "The ID of the google cloud project to deploy resources in."
}


variable "google_cloud_region" {
  type = string
  description = "The google cloud region to deploy resources in."
}


variable "github_organisation" {
  type = string
  description = "The name of the organisation or other account on GitHub to link to the workload identity federation provider."
}


variable "maintainer_service_account_names" {
  type = set(string)
  description = "The names of each maintainer IAM service account that should be created. They'll be prefixed with 'maintainer-'."
}


variable "deletion_protection" {
  type        = bool
  default     = true
  description = "Apply deletion protection to the event store and cloud storage bucket."
}
