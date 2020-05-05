created_on = "2019-12-09"
created_by = "fredrick-myrvoll"

environment    = "dev"
google_project = "module-dev"
google_region  = "europe-north1"
google_zone    = "europe-north1-c"

dataset_id            = "example_bigquery"
dataset_friendly_name = "Example BigQuery Dataset"
dataset_description   = "This is just a example description"


tables = {
  example_table = {
    time_partitioning        = "DAY"
    require_partition_filter = "false"
    schema                   = <<EOF
[
  {
    "name": "id",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "UUID"
  },
  {
    "name": "example_strings",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "This is just a table containing example strings"
  }
]
EOF
  }
}