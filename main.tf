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

resource "random_integer" "st_num" {
  min = 10000
  max = 99999
}

# Create resource group
resource "azurerm_resource_group" "rg" {
  name     = "${lower(var.service)}-${lower(var.environment)}-rg"
  location = var.location

  tags = local.tags
}

# Create storage account
resource "azurerm_storage_account" "st" {
  name                     = "${lower(var.service)}${lower(var.environment)}${random_integer.st_num.result}st"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.tags
}
