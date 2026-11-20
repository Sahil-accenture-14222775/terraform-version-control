resource "local_file" "project_config" {
  filename = "${path.module}/project12-output.txt"

  content = <<-EOT
    Project: ${var.project_name}
    Environment: ${var.environment}
    Managed by: Terraform
  EOT
}

resource "local_file" "project_info" {
  filename = "${path.module}/project-info.txt"

  content = "Project: ${var.project_name}\nTerraform CI Plan Successful"
}
