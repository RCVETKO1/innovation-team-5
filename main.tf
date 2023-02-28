terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

# Create resource group
resource "azurerm_resource_group" "rg" {
  name     = "${lower(var.service)}-${lower(var.environment)}-rg"
  location = var.location

  tags = local.tags
}
