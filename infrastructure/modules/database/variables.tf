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

variable "my_dns_zone_name" {
  description = "The name of the private DNS zone."
  type        = string
}

variable "my_dns_zone_link_name" {
  description = "The name of the private DNS zone link."
  type        = string
}

variable "administrator_login" {
  description = "The administrator login for the database server."
  type        = string
}

variable "administrator_password" {
  description = "The administrator password for the database server."
  type        = string
}

variable "postgresql_db_name" {
  description = "The name of the database to be created."
  type        = string
}
