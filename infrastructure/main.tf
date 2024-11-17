provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  physical_location   = var.physical_location
}

module "vnet" {
  source                  = "./modules/vnet"
  resource_group_name     = module.resource_group.resource_group_name
  physical_location       = module.resource_group.physical_location
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  my_subnet_name          = var.my_subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}
