resource "google_project_iam_member" "github_actions__roles" {
  for_each = toset(
    [
      "roles/iam.serviceAccountUser",
      "roles/pubsub.editor",
      "roles/errorreporting.writer",
      "roles/artifactregistry.writer",
      "roles/storage.objectAdmin",
      # Allows the GHA to call "namespaces get" for Cloud Run to determine the resulting run URLs of the services.
      # This should also allow a service to get its own name by using:
      #   https://stackoverflow.com/questions/65628822/google-cloud-run-can-a-service-know-its-own-url/65634104#65634104
      "roles/run.developer",
    ]
  )
  project    = var.google_cloud_project_id
  role       = each.value
  member     = "serviceAccount:${google_service_account.github_actions_service_account.email}"
  depends_on = [time_sleep.wait_for_google_apis_to_enable]
}
