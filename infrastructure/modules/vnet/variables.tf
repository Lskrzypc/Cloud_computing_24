variable "vnet_name" {
  description = "Nom du Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Plage d'adresses IP du Virtual Network"
  type        = list(string)
}

variable "location" {
  description = "Localisation du Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
}

variable "subnet_name" {
  description = "Nom de la Subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Préfixes d'adresses IP pour la Subnet"
  type        = list(string)
}
