module "development" {
  source = "./modules/environment"

  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner
  backup_level = var.environment == "Production" ? "High" : "Standard"
}
resource "terraform_data" "servers" {
  count = 3

  input = {
    server_name = "server-${count.index + 1}"
  }
}
resource "terraform_data" "applications" {
  for_each = toset(["frontend", "backend", "database"])

  input = {
    application_name = each.key
  }
}
resource "terraform_data" "application_server" {
  input = {
    server_name = "application-server-v2"
  }

  triggers_replace = [
    "application-server-v2"
  ]

  lifecycle {
    create_before_destroy = true
  }
}
resource "terraform_data" "important_database" {
  input = {
    database_name = "production-database"
  }

  lifecycle {
    prevent_destroy = true
  }
}
resource "terraform_data" "application_config" {
  input = {
    application_name = "payment-service"
    owner            = "Admin"
  }

  lifecycle {
    ignore_changes = [
      input
    ]
  }
}