resource "random_string" "my_random_blob_storage_name" {
  length = 32
  special = false
  upper = false 
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "examplestoracc"
  resource_group_name      = var.resource_group_name
  location                 = var.physical_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "content"
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob_storage" {
  name                   = "my-awesome-content${random_string.my_random_blob_storage_name.result}.zip"
  storage_account_name   = var.storage_account_name
  storage_container_name = var.storage_container_name
  type                   = "Block"
}