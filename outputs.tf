output "artifact_registry_repository_name" {
  value = google_artifact_registry_repository.service_docker_images.name
  description = "The name of the artifact registry repository storing Octue Twined service images."
}
