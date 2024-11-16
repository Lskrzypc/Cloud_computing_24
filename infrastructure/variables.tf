# PROVIDER VARIABLES
variable "subscription_id" {
  description = "Your Azure subscription ID. You may find it running 'az login' command"
  type        = string
}

# RESOURCE GROUP VARIABLES
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default = "Cloud24"
}

variable "physical_location" {
  description = "Resource group and modules physical location"
  type        = string
  default     = "France Central"
}

# VIRTUAL NETWORK VARIABLES
variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet"
}

variable "vnet_address_space" {
  description = "Virtual network address space"
  type        = list(string)
  default = ["10.0.0.0/16"]
}

variable "app_service_subnet_name" {
  description = "App Service subnet name"
  type        = string
  default     = "app-service-subnet"
}

variable app_service_subnet_address_space {
  description = "App Service subnet address space"
  type        = list(string)
  default = ["10.0.1.0/24"]
}

variable "database_subnet_name" {
  description = "Database subnet name"
  type        = string
  default     = "database-subnet"
}

variable "database_subnet_address_space" {
  description = "Database subnet address space"
  type        = list(string)
  default = ["10.0.2.0/24"]
}

variable "bastion_subnet_name" {
  description = "Bastion subnet name"
  type        = string
  default     = "bastion-subnet"
}

variable "bastion_subnet_address_space" {
  description = "Bastion subnet address space"
  type        = list(string)
  default = ["10.0.3.0/24"]
}