variable "bucket_name" {
  description = "Google Cloud Storage bucket name for Terraform state files."
  default     = ""
}
variable "project_id" {
  description = "Google Cloud Project ID."
}

variable "project_name" {
  description = "Google Cloud Project Name."
  default     = ""
}

variable "services" {
  description = "Google Cloud API Services."
  type        = "list"
  default     = [
    "bigquery-json.googleapis.com",
    "cloudapis.googleapis.com",
    "clouddebugger.googleapis.com",
    "cloudfunctions.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudtrace.googleapis.com",
    "compute.googleapis.com",
    "datastore.googleapis.com",
    "drive.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "oslogin.googleapis.com",
    "pubsub.googleapis.com",
    "servicemanagement.googleapis.com",
    "serviceusage.googleapis.com",
    "sql-component.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com"
  ]
}
