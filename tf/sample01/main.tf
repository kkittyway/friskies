provider "azurerm" {
  version = "=2.24.0"

  subscription_id = "${file("../account.json")}"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "NAME_OF_THE_VM-rg"
  location = "West Europe"
}
