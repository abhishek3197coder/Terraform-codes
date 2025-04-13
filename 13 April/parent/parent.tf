terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }

backend "azurerm"{
  resource_group_name  = "rg_abhishek"
  storage_account_name = "stg_abhishek"
  container_name       = "tfstate"
  key                  = "abhishek.tfstate"
}

}


provider "azurerm" {
  features {}
  subscription_id = ""
}

