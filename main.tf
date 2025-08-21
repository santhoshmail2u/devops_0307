resource "azurerm_resource_group" "example" {
    name = "learning"
    location = "east us"
    tags = local.tags
}

locals {
    tags = {"env":"dev"}
}

output "rg_name" {
  value = "my rg name is : ${azurerm_resource_group.example.name}"
}

output "rg_location" {
  value = azurerm_resource_group.example.location
}

output "rg_id" {
  value = azurerm_resource_group.example.id
}
