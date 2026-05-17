data "azurerm_storage_account" "tfstate" {
  name                = var.storage_account_name
  resource_group_name = var.azure_state_resource_group
}

data "azurerm_storage_container" "tfstate" {
  name                 = var.tfstate_container_name
  storage_account_name = data.azurerm_storage_account.tfstate.name
}

resource "azurerm_resource_group" "lab2" {
  name     = "zionsbancorp_lab2"
  location = "East US"
}

resource "azurerm_virtual_network" "lab2" {
  name                = var.vnet_name
  location            = azurerm_resource_group.lab2.location
  resource_group_name = azurerm_resource_group.lab2.name
  address_space       = var.vnet_address_space
}
