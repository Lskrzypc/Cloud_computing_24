variable "resource_group_name" {
  description = "The name of the resource group in which the database will be created."
  type        = string
}

variable "my_subnet_id" {
  description = "The ID of the virtual network to which the DNS zone will be linked."
  type        = string
}

variable "vnet_id" {
  description = "The ID of the virtual network to which the database server will be linked."
  type        = string

}
variable "physical_location" {
  description = "The physical location of the database server."
  type        = string
}
