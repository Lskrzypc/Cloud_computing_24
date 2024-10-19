provider "azurerm" {
  features = {}
}

module "resource_group" {
  source          = "./modules/resource_group"
  rg_name         = var.rg_name
  location        = var.location
  subscription_id = var.subscription_id
}
