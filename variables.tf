variable "google_cloud_project_id" {
  type        = string
  description = "The ID of the google cloud project to deploy resources in."
}


variable "google_cloud_region" {
  type        = string
  description = "The google cloud region to deploy resources in."
}


variable "github_account" {
  type        = string
  description = "The name of the GitHub account to link to the workload identity federation provider. The provider is used to authenticate with google cloud in GitHub Actions workflows."
}


variable "maintainer_service_account_names" {
  type        = set(string)
  description = "The names of each maintainer IAM service account that should be created. They'll be prefixed with 'maintainer-'."
}


variable "deletion_protection" {
  type        = bool
  default     = true
  description = "Apply deletion protection to the event store and cloud storage bucket."
}
