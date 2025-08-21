resource "azurerm_resource_group" "example" {
    name = "learning"
    location = "east us"
    tags = local.tags
}

data "azurerm_resource_group" "example" {
    name = "learning"
}

locals {
    tags = {"env":"dev"}
}

output "rg_name" {
  value = "my rg name is : ${data.azurerm_resource_group.example.name}"
}

output "rg_location" {
  value = data.azurerm_resource_group.example.location
}

output "rg_id" {
  value = data.azurerm_resource_group.example.id
}

variable "client_secret" {
  sensitive = true
}
