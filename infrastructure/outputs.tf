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

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "my_subnet_name" {
  value = module.vnet.my_subnet_name
}

output "my_subnet_id" {
  value = module.vnet.my_subnet_id
}

output "success_message_vnet" {
  value = module.vnet.success_message_vnet
}
