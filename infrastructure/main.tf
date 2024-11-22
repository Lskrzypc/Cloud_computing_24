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
  source              = "./modules/vnet"
  resource_group_name = module.resource_group.resource_group_name
  physical_location   = module.resource_group.physical_location
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  # Database subnet
  database_subnet_name             = var.database_subnet_name
  database_subnet_address_prefixes = var.database_subnet_address_prefixes
  # Api subnet
  app_subnet_name             = var.app_subnet_name
  app_subnet_address_prefixes = var.app_subnet_address_prefixes
  # Gateway subnet
  gateway_subnet_name             = var.gateway_subnet_name
  gateway_subnet_address_prefixes = var.gateway_subnet_address_prefixes
}

module "database" {
  source                 = "./modules/database"
  resource_group_name    = module.resource_group.resource_group_name
  vnet_id                = module.vnet.vnet_id
  physical_location      = module.resource_group.physical_location
  database_subnet_id     = module.vnet.database_subnet_id
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
  source              = "./modules/app_service"
  app_service_name    = var.app_service_name
  resource_group_name = module.resource_group.resource_group_name
  physical_location   = module.resource_group.physical_location
  # Docker vars using GHCR (GitHub Container Registry)
  docker_image             = var.docker_image
  docker_registry_username = var.docker_registry_username
  docker_registry_password = var.docker_registry_password
  docker_registry_url      = var.docker_registry_url
  # API subnet
  app_subnet_id     = module.vnet.app_subnet_id
  service_plan_name = var.service_plan_name

  # Database environment variables
  database_host     = module.database.postgresql_host
  database_port     = module.database.postgresql_port
  database_name     = module.database.postgresql_db_name
  database_user     = var.administrator_login
  database_password = var.administrator_password

  # Blob storage environment variables
  storage_url        = module.blob_storage.storage_url
  storage_account_id = module.blob_storage.storage_account_id
}

module "api_gateway" {
  source              = "./modules/application_gateway"
  resource_group_name = module.resource_group.resource_group_name
  physical_location   = module.resource_group.physical_location
  public_ip_name      = var.public_ip_name
  vnet_name           = module.vnet.vnet_name
  gateway_subnet_id   = module.vnet.gateway_subnet_id
  gateway_subnet_name = module.vnet.gateway_subnet_name

}
