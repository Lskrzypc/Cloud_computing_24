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

variable "subscription_id" {
  description = "Your Azure subscription ID. You may find it running 'az login' command"
  type        = string
}

# VIRTUAL NETWORK VARIABLES
