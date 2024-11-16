output "vnet_name" {
  description = "Virtual network name"
  value = azurerm_virtual_network.vnet.name
}

output "app_service_subnet_name" {
  description = "App Service subnet name"
  value = azurerm_subnet.app_service_subnet.name
}

output "database_subnet_name" {
  description = "Database subnet name"
  value = azurerm_subnet.database_subnet.name
}

output "bastion_subnet_name" {
  description = "Bastion subnet name"
  value = azurerm_subnet.bastion_subnet.name
}

output "success_message_vnet" {
  value = "The virtual network and subnetworks has been created successfully"
}