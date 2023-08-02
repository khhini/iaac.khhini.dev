module "folders" {
  source = "./folders"
  org_id = var.org_id
}

module "projects" {
  source = "./projects"
  operation_folder_id = module.folders.operation_folder_id
  billing_account = var.billing_account
  
}