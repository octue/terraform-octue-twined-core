resource "google_storage_bucket" "default" {
  name                        = "${var.github_organisation}-${var.google_cloud_project_id}-octue-twined"
  location                    = var.google_cloud_region
  uniform_bucket_level_access = true

  autoclass {
    enabled                = true
    terminal_storage_class = "ARCHIVE"
  }

  force_destroy = !var.deletion_protection
}
