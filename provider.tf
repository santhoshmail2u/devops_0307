terraform {
  required_version = "= 1.12.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  client_id       = "ec560313-a674-435c-85a6-1090e8de1618"
  client_secret   = var.client_secret
  tenant_id       = "3bd737dd-bc87-413a-a26d-b2336d2f90ce"
  subscription_id = "f9ec3efc-a456-4f55-ac96-9bd4b39578a6"
  features {}
}
