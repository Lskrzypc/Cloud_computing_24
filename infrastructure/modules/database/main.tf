resource "azurerm_private_dns_zone" "my_dns_zone" {
  name                = "mydnszone.postgres.database.azure.com"
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "my_dns_zone_link" {
  name                  = "mydnszonelink"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.my_dns_zone.name
  virtual_network_id    = var.vnet_id

}

//CI/CD test
resource "azurerm_postgresql_flexible_server" "example" {
  name                          = "example-psqlflexibleserver"
  resource_group_name           = var.resource_group_name
  location                      = var.physical_location
  version                       = "16"
  delegated_subnet_id           = var.my_subnet_id
  private_dns_zone_id           = azurerm_private_dns_zone.my_dns_zone.id
  public_network_access_enabled = false
  administrator_login           = "psqladmin"
  administrator_password        = "H@Sh1CoR3!"
  zone                          = "1"

  storage_mb   = 32768
  storage_tier = "P30"

  sku_name   = "GP_Standard_D4s_v3"
  depends_on = [azurerm_private_dns_zone_virtual_network_link.my_dns_zone_link]
}

resource "azurerm_postgresql_database" "my_db" {
  name                = "mydatabase"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_flexible_server.example.name
  charset             = "UTF8"
  collation           = "English_United States.1252"

}
