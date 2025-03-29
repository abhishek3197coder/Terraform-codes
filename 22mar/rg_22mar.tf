terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
}

provider "azurerm" {
    feature{}
  subscription_id = ""
}


resource "azurerm_resource_group" "rg_22mar" {
  name     = "rg_22mar"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage_rg_22mar" {
  name                     = "storage_rg_22mar"
  resource_group_name      = azurerm_resource_group.storage_rg_22mar.name
  location                 = azurerm_resource_group.storage_rg_22mar.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  }

resource "azurerm_storage_account" "storage_rg_22mar2" {
  name                     = "storage_rg_22mar2"
  resource_group_name      = azurerm_resource_group.storage_rg_22mar2.name
  location                 = azurerm_resource_group.storage_rg_22mar2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  }