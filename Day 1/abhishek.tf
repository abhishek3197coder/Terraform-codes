provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "Abhi" {
    name     = "abhi-resources"
    location = "West Europe"
}