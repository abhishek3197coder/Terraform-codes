resource "azurerm_resource_group" "dell-rg" {
    name     = var.rg_name1
    location = "East US"
  
}
# resource "azurerm_storage_account" "dell-storage" {
#   name                     = "dellkastorageaccount"
#   resource_group_name      = azurerm_resource_group.dell-rg.name
#   location                 = azurerm_resource_group.dell-rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

 
# }