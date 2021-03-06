terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "diem" {
  name     = "diem-${terraform.workspace}"
  location = var.region
}
