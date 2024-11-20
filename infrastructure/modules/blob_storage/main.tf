resource "random_string" "my_random_storage_name" {
  length = 32
  special = false
  upper = false 
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "examplestoracc${random_string.my_random_storage_name.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.physical_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "content${random_string.my_random_storage_name.result}"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob_storage" {
  name                   = "my-awesome-content${random_string.my_random_storage_name.result}.zip"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.storage_container.name
  type                   = "Block"
}