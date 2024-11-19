################################################################################################
#                                                                                              #
#                                     PROVIDER VARIABLES                                       #
#                                                                                              #
################################################################################################

variable "subscription_id" {
  description = "Your Azure subscription ID. You may find it running 'az login' command"
  type        = string
}

################################################################################################
#                                                                                              #
#                                  RESOURCE GROUP VARIABLES                                    #
#                                                                                              #
################################################################################################

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "Cloud2024"
}

variable "physical_location" {
  description = "Resource group and modules physical location"
  type        = string
  default     = "France Central"
}

################################################################################################
#                                                                                              #
#                                       VNET VARIABLES                                         #
#                                                                                              #
################################################################################################

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet"
}

variable "vnet_address_space" {
  description = "Virtual network address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "my_subnet_name" {
  description = "App Service subnet name"
  type        = string
  default     = "app-service-subnet"
}

variable "subnet_address_prefixes" {
  description = "App Service subnet address space"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

################################################################################################
#                                                                                              #
#                                     DATABASE VARIABLES                                       #
#                                                                                              #
################################################################################################

variable "my_dns_zone_name" {
  description = "Private DNS zone name"
  type        = string
  default     = "mydnszone.postgres.database.azure.com"
}

variable "my_dns_zone_link_name" {
  description = "Private DNS zone link name"
  type        = string
  default     = "mydnszonelink"
}

variable "administrator_login" {
  description = "Database administrator login"
  type        = string
}

variable "administrator_password" {
  description = "Database administrator password"
  type        = string
}

variable "postgresql_db_name" {
  description = "Database name"
  type        = string
  default     = "mypostgresdb"

}
