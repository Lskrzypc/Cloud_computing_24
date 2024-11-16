variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "physical_location" {
  description = "Resource group and modules physical location"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vnet_address_space" {
  description = "Virtual network address space"
  type        = list(string)
}

variable "app_service_subnet_name" {
  description = "App Service subnet name"
  type        = string
}

variable "app_service_subnet_address_space" {
  description = "App Service subnet address space"
  type        = list(string)
}

variable "database_subnet_name" {
  description = "Database subnet name"
  type        = string
}

variable "database_subnet_address_space" {
  description = "Database subnet address space"
  type        = list(string)
}

variable "bastion_subnet_name" {
  description = "Bastion subnet name"
  type        = string
}

variable "bastion_subnet_address_space" {
  description = "Bastion subnet address space"
  type        = list(string)
}