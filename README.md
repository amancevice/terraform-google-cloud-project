# Terraform Google Cloud Project

Terraform configuration for Google Cloud Project.

There is a bit of a chicken-and-egg problem with this module. You will need to create the project, the service account to edit the project (and download its access keys), and the bucket to store terraform configuration.

Once the project and bucket have been created, import them into the module using `terraform import`.
