variable "public_ip_name" {
  description = "Public IP name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "physical_location" {
  description = "Resource group and modules physical location"
  type        = string
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "gateway_subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "gateway_subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "application_gateway_name" {
  description = "Application gateway name"
  type        = string
}

variable "app_service_fqdn" {
  description = "App service FQDN"
  type        = string
}
