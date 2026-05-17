terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "lab1" {
  name     = "zionsbancorp_prep"
  location = "East US"
}

resource "azurerm_virtual_network" "lab1" {
  name                = "lab1-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.lab1.location
  resource_group_name = azurerm_resource_group.lab1.name
}
