variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "S-auto-RG"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "canada central"
}

variable "ASP" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "S-auto-asp"
}

variable "sku_name" {
  description = "SKU for the App Service Plan"
  type        = string
  default     = "F1"

  validation {
    condition = can(regex("^(F1|D1|B1|B2|B3|S1|S2|S3|P1|P2|P3|P1v2|P2v2|P3v2|P1v3|P2v3|P3v3)$", var.sku_name))
    error_message = "The sku_name must be a valid Azure App Service Plan SKU."
  }
}

variable "web_app_name" {
  description = "Name of the web app (will have random suffix added)"
  type        = string
  default     = "S-auto-webapp"
}

variable "node_V" {
  description = "Node.js version for the application stack"
  type        = string
  default     = "20-lts"
}

variable "environment" {
  description = "Environment name for tagging"
  type        = string
  default     = "Development"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "S-auto-Application"
}