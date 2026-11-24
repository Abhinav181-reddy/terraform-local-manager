# Terraform-Based Local Project Infrastructure Manager

## 1. Project Overview

The **Terraform-Based Local Project Infrastructure Manager** is a beginner-friendly hands-on project designed to understand and practise Terraform concepts.

The project demonstrates how Terraform can organize and manage infrastructure configurations using reusable modules, variables, workspaces, resource iteration, lifecycle rules, and state management.

This project uses Terraform's built-in `terraform_data` resource, so it does not require an AWS account or create actual cloud infrastructure.

## 2. Project Objectives

- Understand Infrastructure as Code (IaC).
- Learn Terraform configuration using HCL.
- Practise variables and environment-specific configurations.
- Build reusable Terraform modules.
- Understand conditional expressions.
- Implement `count` and `for_each`.
- Manage separate environments using Terraform workspaces.
- Understand Terraform state and backup concepts.
- Practise lifecycle management.
- Use Git and GitHub for version control.

## 3. Technologies Used

| Technology | Purpose |
|---|---|
| Terraform | Infrastructure as Code |
| HCL | Terraform configuration language |
| VS Code | Code editor |
| Git | Version control |
| GitHub | Source code hosting |
| PowerShell | Command-line execution |

## 4. Project Structure

```text
terraform-local-manager/
│
├── modules/
│   └── environment/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── .gitignore
├── main.tf
├── variables.tf
├── outputs.tf
├── dev.tfvars
├── test.tfvars
├── prod.tfvars
└── README.md
```

## 5. Terraform Concepts Implemented

### Terraform Fundamentals
- Infrastructure as Code
- Providers
- Resources
- HCL syntax
- Terraform state

### Environment Configuration