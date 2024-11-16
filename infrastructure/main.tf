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
  source                    = "./modules/vnet"
  resource_group_name       = module.resource_group.resource_group_name
  physical_location         = module.resource_group.physical_location
  vnet_name                 = var.vnet_name
  vnet_address_space        = var.vnet_address_space
  app_service_subnet_name   = var.app_service_subnet_name
  app_service_subnet_address_space = var.app_service_subnet_address_space
  database_subnet_name      = var.database_subnet_name
  database_subnet_address_space = var.database_subnet_address_space
  bastion_subnet_name       = var.bastion_subnet_name
  bastion_subnet_address_space = var.bastion_subnet_address_space
}