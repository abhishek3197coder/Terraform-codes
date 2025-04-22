terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}   
  subscription_id ="f9c231f8-1a82-4ec0-8812-e0d66902d1c8"
  # Configuration options
}


# resource "azurerm_resource_group" "dell-rg" {
#     name     = "Dellrg"
#     location = "East US"
  
# }
# resource "azurerm_storage_account" "dell-storage" {
#   name                     = "dellkanayastorageaccount"
#   resource_group_name      = azurerm_resource_group.dell-rg.name
#   location                 = azurerm_resource_group.dell-rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

 
# }