output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.main.name
}

output "app_service_plan_name" {
  description = "Name of the created App Service Plan"
  value       = azurerm_service_plan.main.name
}

output "web_app_name" {
  description = "Name of the created Web App"
  value       = azurerm_linux_web_app.main.name
}

output "web_app_url" {
  description = "URL of the deployed web application"
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"
}

output "web_app_default_hostname" {
  description = "Default hostname of the web application"
  value       = azurerm_linux_web_app.main.default_hostname
}

output "app_service_plan_id" {
  description = "ID of the App Service Plan"
  value       = azurerm_service_plan.main.id
}

output "resource_group_location" {
  description = "Location of the resource group"
  value       = azurerm_resource_group.main.location
}