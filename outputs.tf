output "bucket_name" {
  description = "Cloud Storage bucket name for Terraform state files."
  value       = "${google_storage_bucket.bucket.name}"
}

output "project_id" {
  description = "Google Cloud Project "
  value       = "${google_project.project.project_id}"
}

output "project_services" {
  description = "Google Cloud Project enabled API services."
  value       = ["${google_project_services.project.services}"]
}
