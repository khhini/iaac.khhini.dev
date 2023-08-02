resource "google_project" "ops_operation_center" {
  name = "Ops Operation Center"
  project_id = "ops-operation-center"
  folder_id = var.operation_folder_id
  billing_account = var.billing_account
}

resource "google_project" "dev_devsecops_exp" {
  name = "Devsecops Experimental Project"
  project_id = "dev-devsecops-exp"
  folder_id = var.development_folder_id
  billing_account = var.billing_account
}