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

variable "database_subnet_name" {
  description = "The name you want to give to the subnet"
  type        = string
  default     = "database-subnet"
}

variable "database_subnet_address_prefixes" {
  description = "The subnet address space"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "app_subnet_name" {
  description = "App subnet name"
  type        = string
  default     = "app-subnet"
}

variable "app_subnet_address_prefixes" {
  description = "App subnet address prefixes"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "gateway_subnet_name" {
  description = "Gateway subnet name"
  type        = string
  default     = "gateway-subnet"
}

variable "gateway_subnet_address_prefixes" {
  description = "Gateway subnet address prefixes"
  type        = list(string)
  default     = ["10.0.3.0/24"]
}

################################################################################################
#                                                                                              #
#                                     DATABASE VARIABLES                                       #
#                                                                                              #
################################################################################################

variable "my_dns_zone_name" {
  description = "Your private DNS zone name. Must be a valid domain name"
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

################################################################################################
#                                                                                              #
#                                     APP_SERVICE VARIABLES                                    #
#                                                                                              #
################################################################################################

variable "service_plan_name" {
  description = "Name of service plan"
  type        = string
  default     = "my_service_plan"
}

variable "docker_registry_password" {
  description = "Docker password"
  type        = string
}

variable "docker_image" {
  description = "Image"
  type        = string
  default     = "ghcr.io/lskrzypc/cloud_computing_24:latest"
}

variable "docker_registry_username" {
  description = "Docker username"
  type        = string
  default     = "Lskrzypc"
}

variable "docker_registry_url" {
  description = "Docker url"
  type        = string
  default     = "https://ghcr.io"
}

variable "app_service_name" {
  description = "App service name"
  type        = string
  default     = "cloudcomputing24api"

}

#APP GATEWAY VARIABLES

variable "public_ip_name" {
  description = "Public IP name"
  type        = string
  default     = "ipcloudcomputing24"
}
