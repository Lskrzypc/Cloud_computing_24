output "rg_name" {
  description = "Nom du groupe de ressources"
  value       = azurerm_resource_group.rg.name
}

output "rg_id" {
  description = "ID du groupe de ressources"
  value       = azurerm_resource_group.rg.id
}

output "location" {
  description = "Localisation du groupe de ressources"
  value       = azurerm_resource_group.rg.location
}

output "message" {
  value = "Le groupe de ressources a été crée avec succès"
}