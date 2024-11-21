resource "azurerm_service_plan" "api_plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.physical_location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app_service" {
  name                          = var.app_service_name
  resource_group_name           = var.resource_group_name
  location                      = var.physical_location
  service_plan_id               = azurerm_service_plan.api_plan.id
  public_network_access_enabled = true
  virtual_network_subnet_id     = var.app_subnet_id

  site_config {
    application_stack {
      docker_registry_url      = var.docker_registry_url
      docker_image_name        = var.docker_image
      docker_registry_password = var.docker_registry_password
      docker_registry_username = var.docker_registry_username
    }
  }


  app_settings = {
    DATABASE_HOST     = "postgresqlflexibleserveriy14be4sr0rjrs6p0ehm409sr476sdoa.postgres.database.azure.com"
    DATABASE_PORT     = "5432"
    DATABASE_NAME     = "postgres"
    DATABASE_USER     = "postgresqladmin"
    DATABASE_PASSWORD = "testPassword2024#"

  }

  identity {
    type = "SystemAssigned"
  }
}
