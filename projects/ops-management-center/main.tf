provider "google" {
  project = var.project_id
  region = var.region
  zone = var.zone
}

module "cloud_storage" {
  source = "./cloud_storages"
  location = var.region
}