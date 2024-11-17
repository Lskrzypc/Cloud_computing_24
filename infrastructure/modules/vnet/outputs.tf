output "vnet_name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.vnet.id
}

output "my_subnet_name" {
  description = "Subnet name"
  value       = azurerm_subnet.my_subnet.name
}

output "my_subnet_id" {
  description = "Subnet ID"
  value       = azurerm_subnet.my_subnet.id
}

output "success_message_vnet" {
  value = "The virtual network and subnetworks has been created successfully"
}
