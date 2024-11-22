output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.storage_account.name
}

output "storage_container_name" {
  description = "The name of the container"
  value       = azurerm_storage_container.storage_container.name
}

output "storage_blob_name" {
  description = "The name of the blob storage"
  value       = azurerm_storage_blob.blob_storage.name
}

output "storage_url" {
  description = "The URL of the blob storage"
  value       = format("%s%s", azurerm_storage_account.storage_account.primary_blob_endpoint, azurerm_storage_container.storage_container.name)
}


