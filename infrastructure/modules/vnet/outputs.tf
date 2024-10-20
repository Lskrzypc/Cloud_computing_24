output "vnet_id" {
  description = "ID du Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  description = "ID de la Subnet"
  value       = azurerm_subnet.subnet.id
}
