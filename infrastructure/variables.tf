# PROVIDER VARIABLES
variable "subscription_id" {
  description = "Your Azure subscription ID. You may find it running 'az login' command"
  type        = string
}

# RESOURCE GROUP VARIABLES
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

# VIRTUAL NETWORK VARIABLES
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
