variable "resource_group_name" {
  description = "The name of the resource group in which the database will be created."
  type        = string
}

variable "physical_location" {
  description = "The physical location of the database server."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type = string
}

variable "storage_container_name" {
  description = "The name of the container"
  type = string
}