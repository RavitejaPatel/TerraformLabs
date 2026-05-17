data "azurerm_storage_account" "tfstate" {
  name                = var.storage_account_name
  resource_group_name = var.azure_state_resource_group
}

data "azurerm_storage_container" "tfstate" {
  name                 = var.tfstate_container_name
  storage_account_name = data.azurerm_storage_account.tfstate.name
}

data "azurerm_resource_group" "state" {
  name = var.azure_state_resource_group
}

resource "azurerm_virtual_network" "lab2" {
  name                = var.vnet_name
  location            = data.azurerm_resource_group.state.location
  resource_group_name = data.azurerm_resource_group.state.name
  address_space       = var.vnet_address_space
}
