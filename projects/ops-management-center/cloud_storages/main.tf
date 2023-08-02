resource "google_storage_bucket" "ops_operation_center" {
  name = "ops-operation-center"
  location = var.location
  force_destroy = false  
}