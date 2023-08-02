terraform {
  required_version = ">=1.5.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">=4.76.0"
    }
  }

  backend "gcs" {
    bucket = "ops-operation-center"
    prefix = "terraform"
  }
}

module "org" {
  source = "./org"
  org_id = var.org_id
  billing_account = var.billing_account
}

module "ops_operation_center" {
  source = "./projects/ops-management-center"
  project_id = module.org.ops_operation_center_project_id
  region = var.region
  zone = var.zone
}