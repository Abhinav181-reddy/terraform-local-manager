resource "terraform_data" "environment" {
  input = {
    project_name = var.project_name
    environment  = var.environment
    owner        = var.owner
    backup_level = var.backup_level
  }
}