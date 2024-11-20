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

module "database" {
  source                 = "./modules/database"
  resource_group_name    = module.resource_group.resource_group_name
  vnet_id                = module.vnet.vnet_id
  physical_location      = module.resource_group.physical_location
  my_subnet_id           = module.vnet.my_subnet_id
  my_dns_zone_name       = var.my_dns_zone_name
  my_dns_zone_link_name  = var.my_dns_zone_link_name
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  postgresql_db_name     = var.postgresql_db_name
}

module "blob_storage" {
  source              = "./modules/blob_storage"
  resource_group_name = module.resource_group.resource_group_name
  physical_location   = module.resource_group.physical_location

}


module "app_service" {
  source                   = "./modules/app_service"
  resource_group_name      = module.resource_group.resource_group_name
  physical_location        = module.resource_group.physical_location
  docker_image             = var.docker_image
  docker_registry_username = var.docker_registry_username
  docker_registry_password = var.docker_registry_password
  docker_registry_url      = var.docker_registry_url
  my_subnet_id             = module.vnet.my_subnet_id
  service_plan_name        = var.service_plan_name
}
