variable "google_cloud_project_id" {
  type = string
}


variable "google_cloud_region" {
  type = string
}


variable "github_organisation" {
  type = string
}


variable "maintainer_service_account_names" {
  type = set(string)
}


variable "deletion_protection" {
  type        = bool
  default     = true
  description = "Apply deletion protection to the event store and storage buckets."
}
