output "project_name" {
  value = var.project_name
}

output "file_path" {
  value = local_file.project_config.filename
}

output "project_file" {
  value = local_file.project_info.filename
}
