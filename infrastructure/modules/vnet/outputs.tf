output "vnet_name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.vnet.id
}

output "database_subnet_name" {
  description = "Subnet name"
  value       = azurerm_subnet.database_subnet.name
}

output "database_subnet_id" {
  description = "Subnet ID"
  value       = azurerm_subnet.database_subnet.id
}

output "success_message_vnet" {
  value = "The virtual network and subnetworks has been created successfully"
}

output "app_subnet_id" {
  description = "App subnet ID"
  value       = azurerm_subnet.app_subnet.id
}

output "app_subnet_name" {
  description = "App subnet name"
  value       = azurerm_subnet.app_subnet.name
}

output "gateway_subnet_id" {
  description = "Gateway subnet ID"
  value       = azurerm_subnet.gateway_subnet.id
}

output "gateway_subnet_name" {
  description = "Gateway subnet name"
  value       = azurerm_subnet.gateway_subnet.name
}
