locals {
  project_name = "${coalesce("${var.project_name}", "${var.project_id}")}"
  bucket_name  = "${coalesce("${var.bucket_name}", "${var.project_id}-terraform")}"
}

resource "google_project" "project" {
  name       = "${local.project_name}"
  project_id = "${var.project_id}"
}

resource "google_storage_bucket" "bucket" {
  name          = "${local.bucket_name}"
  project       = "${google_project.project.id}"
  storage_class = "MULTI_REGIONAL"
}

resource "google_project_services" "project" {
  project  = "${google_project.project.id}"
  services = ["${var.services}"]
}
