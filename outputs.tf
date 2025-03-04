output "artifact_registry_repository_name" {
  value       = google_artifact_registry_repository.service_docker_images.name
  description = "The name of the artifact registry repository storing Octue Twined service images."
}


output "storage_bucket_url" {
  description = "The `gs://` URL of the storage bucket used to store service inputs, outputs, and diagnostics."
  value       = google_storage_bucket.default.url
}


output "bigquery_events_table_id" {
  value = "${google_bigquery_dataset.service_event_dataset.dataset_id}.${google_bigquery_table.service_event_table.table_id}"
}
