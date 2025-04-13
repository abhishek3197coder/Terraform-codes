resource "azurerm_storage_account" "stg_abhishek" {
  name                     = "stg_abhishek"
  resource_group_name      = azurerm_resource_group.rg_abhishek.name
  location                 = azurerm_resource_group.rg_abhishek.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  
}