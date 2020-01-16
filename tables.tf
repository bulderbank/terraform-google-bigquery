resource "google_bigquery_table" "table" {
  count      = length(keys(var.tables))
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = element(keys(var.tables), count.index)

  time_partitioning {
    type                     = lookup(element(values(var.tables), count.index), "time_partitioning")
    require_partition_filter = lookup(element(values(var.tables), count.index), "require_partition_filter")
  }

  labels = local.labels

  schema = lookup(element(values(var.tables), count.index), "schema")

  depends_on = [google_bigquery_dataset.dataset]
}
