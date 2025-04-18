terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "akg_rg"
    storage_account_name = "akgstg"
    container_name       = "akgcontainer"
    key                 = "akg.terraform.tfstate"
  }
  required_version = ">= 1.0.0"
  
}


provider "azurerm" {
  features {}
subscription_id = "f9c231f8-1a82-4ec0-8812-e0d66902d1c8"

}
resource "azurerm_resource_group" "akg-rg" {
  name     = "akg_rg"
  location = "East US"
}
resource "azurerm_storage_account" "akg-stg" {
    name                     = "akgstg"
    resource_group_name      = azurerm_resource_group.akg-rg.name
    location                 = azurerm_resource_group.akg-rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
   
}
resource "azurerm_storage_container" "akg-stg-container" {
    # depends_on = [ azurerm_storage_account.akg-stg ]
  name                  = "akgcontainer"
  storage_account_id =  azurerm_storage_account.akg-stg.id
  container_access_type = "private"
}