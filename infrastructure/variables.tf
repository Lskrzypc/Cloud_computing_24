# Resource group related variables

variable "rg_name" {
  description = "Le nom du groupe de ressources"
  type        = string
}

variable "location" {
  description = "La localisation du groupe de ressources"
  type        = string
  default     = "France Central"
}

variable "subscription_id" {
  description = "ID de la souscription Azure"
  type        = string
}
