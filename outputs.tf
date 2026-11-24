output "project_name" {
  value = var.project_name
}

output "environment_details" {
  value = module.development.environment_details
}
output "server_names" {
  value = terraform_data.servers[*].output.server_name
}
output "application_names" {
  value = {
    for name, app in terraform_data.applications :
    name => app.output.application_name
  }
}