# RESOURCE_GROUP OUTPUTS
output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

output "physical_location" {
  value = module.resource_group.physical_location
}

output "success_message_rg" {
  value = module.resource_group.success_message_rg
}

# VNET OUTPUTS
output "vnet_name" {
  value = module.vnet.vnet_name
}

output "app_service_subnet_name" {
  value = module.vnet.app_service_subnet_name
}

output "database_subnet_name" {
  value = module.vnet.database_subnet_name
}

output "bastion_subnet_name" {
  value = module.vnet.bastion_subnet_name
}

output "success_message_vnet" {
  value = module.vnet.success_message_vnet
}
