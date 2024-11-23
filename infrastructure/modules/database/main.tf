resource "azurerm_private_dns_zone" "my_dns_zone" {
  name                = var.my_dns_zone_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "my_dns_zone_link" {
  name                  = var.my_dns_zone_link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.my_dns_zone.name
  virtual_network_id    = var.vnet_id

}

# As the flexible_server name must be unique, we are using a random string to generate it
resource "random_string" "my_random_server_name" {
  length  = 32
  special = false
  upper   = false # The flexible server name must be lowercase so we are setting upper to false
}

resource "azurerm_postgresql_flexible_server" "my_postgresql_server" {
  name                          = "postgresqlflexibleserver${random_string.my_random_server_name.result}" # inject the random string
  resource_group_name           = var.resource_group_name
  location                      = var.physical_location
  version                       = "16"
  delegated_subnet_id           = var.database_subnet_id
  private_dns_zone_id           = azurerm_private_dns_zone.my_dns_zone.id
  public_network_access_enabled = false
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password
  zone                          = "1"

  storage_mb   = 32768
  storage_tier = "P4"

  sku_name   = "B_Standard_B1ms"
  depends_on = [azurerm_private_dns_zone_virtual_network_link.my_dns_zone_link]
}

resource "azurerm_postgresql_flexible_server_database" "my_db" {
  name      = var.postgresql_db_name
  server_id = azurerm_postgresql_flexible_server.my_postgresql_server.id
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_webapp" {
  name             = "AllowWebApp"
  server_id        = azurerm_postgresql_flexible_server.my_postgresql_server.id
  start_ip_address = "10.0.2.0" # Plage IP de l'application
  end_ip_address   = "10.0.2.255"
}
