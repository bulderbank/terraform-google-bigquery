resource "google_project_service" "bigquery" {
  project = var.google_project
  service = "bigquery.googleapis.com"

  disable_dependent_services = true
}
