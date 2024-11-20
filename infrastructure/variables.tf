################################################################################################
#                                                                                              #
#                                     PROVIDER VARIABLES                                       #
#                                                                                              #
################################################################################################

variable "subscription_id" {
  description = "Your Azure subscription ID. Run 'az account list --output table' to get it."
  type        = string
  sensitive   = true
}

################################################################################################
#                                                                                              #
#                                  RESOURCE GROUP VARIABLES                                    #
#                                                                                              #
################################################################################################

variable "resource_group_name" {
  description = "The name you want to give to the resource group"
  type        = string
  default     = "Cloud2024"
}

variable "physical_location" {
  description = "Your resource group location. With student accounts -> France Central"
  type        = string
  default     = "France Central"
}

################################################################################################
#                                                                                              #
#                                       VNET VARIABLES                                         #
#                                                                                              #
################################################################################################

variable "vnet_name" {
  description = "The name you want to give to the virtual network"
  type        = string
  default     = "vnet"
}

variable "vnet_address_space" {
  description = "Your virtual network address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "my_subnet_name" {
  description = "The name you want to give to the subnet"
  type        = string
  default     = "app-service-subnet"
}

variable "subnet_address_prefixes" {
  description = "The subnet address space"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}


################################################################################################
#                                                                                              #
#                                     DATABASE VARIABLES                                       #
#                                                                                              #
################################################################################################

variable "my_dns_zone_name" {
  description = "Yoyr private DNS zone name. Must be a valid domain name"
  type        = string
  default     = "mydnszone.postgres.database.azure.com"
}

variable "my_dns_zone_link_name" {
  description = "The name you want to give to the DNS zone link"
  type        = string
  default     = "mydnszonelink"
}

variable "administrator_login" {
  description = "The database administrator login"
  type        = string
  sensitive   = true
}

variable "administrator_password" {
  description = "The database administrator password. Make sure it meets the Azure requirements"
  type        = string
  sensitive   = true
}

variable "postgresql_db_name" {
  description = "Your PostgreSQL database name"
  type        = string
  default     = "mypostgresdb"

}