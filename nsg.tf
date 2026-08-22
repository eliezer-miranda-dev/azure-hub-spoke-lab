resource "azurerm_network_security_group" "management" {
  name                = "nsg-management-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
}

resource "azurerm_subnet_network_security_group_association" "management" {
  subnet_id                 = azurerm_subnet.management.id
  network_security_group_id = azurerm_network_security_group.management.id
}
