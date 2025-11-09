# Configure the Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "Development"
    Project     = "AppService Demo"
  }
}

# Create an App Service Plan
resource "azurerm_service_plan" "main" {
  name                = var.ASP
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"
  sku_name            = var.sku_name



  tags = {
    Environment = "Development"
    Project     = "AppService Demo"
  }
}

# Create the App Service
resource "azurerm_linux_web_app" "main" {
  name                = "${var.web_app_name}-${random_string.suffix.result}"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_service_plan.main.location
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    application_stack {
      # Example: Node.js application
      node_version = var.node_V
    }
    always_on = false # Required for free tier
  }

  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "~20"
    "SCM_DO_BUILD_DURING_DEPLOYMENT" = "true"
  }

  tags = {
    Environment = "Development"
    Project     = var.project_name
  }
}

# Generate a random suffix for unique naming
resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}