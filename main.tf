resource "azurerm_resource_group" "hub" {
  name     = "rg-hub-${var.environment}"
  location = var.location
}


resource "azurerm_virtual_network" "hub" {
  name = "vnet-hub-${var.environment}"


  address_space       = var.hub_vnet_cidr
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
}
