variable "resource_group_name" {
  description = "The name of the resource group in which the database will be created."
  type        = string
}

variable "service_plan_name" {
  description = "Name of service plan"
  type        = string
}

variable "physical_location" {
  description = "Physical location"
  type        = string

}

variable "app_subnet_id" {
  description = "The subnet id"
  type        = string
}

variable "docker_registry_password" {
  description = "The Docker registry password"
  type        = string
  sensitive   = true
}

variable "docker_image" {
  description = "The Docker image"
  type        = string

}
variable "docker_registry_url" {
  description = "The Docker registry URL"
  type        = string

}
variable "docker_registry_username" {
  description = "The Docker registry username"
  type        = string
  sensitive   = true
}
