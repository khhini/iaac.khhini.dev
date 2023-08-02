output "development_folder_id" {
  description = "Development Folder ID"
  value = google_folder.development.folder_id  
}

output "operation_folder_id" {
  description = "Operation Folder ID"
  value = google_folder.operation.folder_id
}

output "production_folder_id" {
  description = "Production Folder ID"
  value = google_folder.production.folder_id
}

output "analytic_folder_id" {
  description = "Analytic Folder ID"
  value = google_folder.analytic.folder_id
}