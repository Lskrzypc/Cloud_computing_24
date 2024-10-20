provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "resource_group" {
  source          = "./modules/resource_group"
  rg_name         = var.rg_name
  location        = var.location
}

module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = "myVnet"
  address_space       = ["10.0.0.0/16"]
  location            = module.resource_group.location
  resource_group_name = module.resource_group.rg_name
  subnet_name         = "mySubnet"
  subnet_address_prefixes = ["10.0.1.0/24"]
}
