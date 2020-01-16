variable "environment" {}

variable "google_project" {}

variable "google_region" {}

variable "google_zone" {}

variable "created_by" {}

variable "created_on" {}

variable "dataset_id" {}

variable "tables" {}

variable "dataset_friendly_name" {}

variable "dataset_description" {}

locals {
  labels = {
    created-with = "terraform"
    created-by   = var.created_by
    created-on   = var.created_on
    environment  = var.environment
  }
}
