# Google BigQuery

Module made for Terraform 0.12.x

### Code examples

```
module "example_bigquery" {
  source = "github.com/bulderbank/terraform-google-bigquery"

  created_on = "2019-12-09"
  created_by = "fredrick-myrvoll"

  environment    = var.environment
  google_project = var.google_project
  google_region  = var.google_region
  google_zone    = var.google_zone

  dataset_id            = "example_bigquery"                    // Appends trailing environment name
  dataset_friendly_name = "Example BigQuery Dataset"
  dataset_description   = "This is just a example description"


  tables = {                      // Can be omitted by providing a empty {}, supports multiple table definitions
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
}

```
