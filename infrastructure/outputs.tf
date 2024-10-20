# Resource group related outputs

output "resource_group_name" {
  description = "Nom du groupe de ressources"
  value       = module.resource_group.rg_name
}

output "resource_group_id" {
  description = "ID du groupe de ressources"
  value       = module.resource_group.rg_id
}

output "resource_group_location" {
  description = "Localisation du groupe de ressources"
  value       = module.resource_group.location
}

output "resource_group_message" {
  description = "Message de création du groupe de ressources"
  value       = module.resource_group.message
}

# Virtual Network related outputs

output "vnet_id" {
  description = "ID du Virtual Network"
  value       = module.vnet.vnet_id
}

output "subnet_id" {
  description = "ID de la Subnet"
  value       = module.vnet.subnet_id
}
