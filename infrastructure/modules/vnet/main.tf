resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.physical_location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "my_subnet" {
  name                 = var.my_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}
