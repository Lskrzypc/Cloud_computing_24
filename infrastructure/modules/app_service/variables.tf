variable "resource_group_name" {
  description = "The name of the resource group in which the database will be created."
  type        = string
}

variable "service_plan_name" {
  description = "name of service plan"
  type        = string
}

variable "physical_location" {
  description = "physical loc"
  type        = string

}

variable "my_subnet_id" {
  description = "the subnet id"
  type        = string
}

variable "docker_registry_password" {
  type = string
}

variable "docker_image" {
  type = string

}
variable "docker_registry_url" {
  type = string

}
variable "docker_registry_username" {
  type = string

}
