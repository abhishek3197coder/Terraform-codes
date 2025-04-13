resource "azurerm_storage_account" "stg_abhishek" {
  name                     = "stg_abhishek"
  resource_group_name      = "rg_abhishek"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  
}
