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

output "database_subnet_name" {
  value = module.vnet.database_subnet_name
}

output "database_subnet_id" {
  value = module.vnet.database_subnet_id
}

output "app_subnet_id" {
  value = module.vnet.app_subnet_id
}

output "success_message_vnet" {
  value = module.vnet.success_message_vnet
}

# BLOB OUTPUTS
output "storage_container_name" {
  description = "The name of the container"
  value       = module.blob_storage.storage_container_name
}

output "storage_blob_name" {
  description = "The name of the blob storage"
  value       = module.blob_storage.storage_blob_name
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.blob_storage.storage_account_id

}

# DATABASE OUTPUTS
output "postgresql_host" {
  value = module.database.postgresql_host
}

output "postgresql_port" {
  value = 5432
}

output "postgresql_db_name" {
  value = module.database.postgresql_db_name
}

output "postgresql_administrator_login" {
  value     = module.database.postgresql_administrator_login
  sensitive = true
}

output "postgresql_administrator_password" {
  value     = var.administrator_password
  sensitive = true
}


# APP SERVICE OUTPUTS

# Blob storage Output
output "storage_url" {
  description = "The URL of the blob storage"
  value       = module.blob_storage.storage_url
}
