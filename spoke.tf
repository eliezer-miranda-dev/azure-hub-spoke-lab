resource "azurerm_virtual_network" "spoke" {
  name                = "vnet-spoke-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name

  address_space = [
    "10.1.0.0/16"
  ]
}
