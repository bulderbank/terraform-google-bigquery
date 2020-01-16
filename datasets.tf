resource "google_bigquery_dataset" "dataset" {
  dataset_id    = "${var.dataset_id}-${var.environment}"
  friendly_name = var.dataset_friendly_name
  description   = var.dataset_description
  location      = var.google_region

  labels = local.labels

  depends_on = [google_project_service.bigquery]
}
