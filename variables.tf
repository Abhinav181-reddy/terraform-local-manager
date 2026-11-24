
variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "owner" {
  description = "Project owner"
  type        = string
}
variable "backup_level" {
  description = "Backup level based on environment"
  type        = string
  default     = "Standard"
}