resource "azurerm_route_table" "hub" {
  name                = "rt-hub-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
}

resource "azurerm_subnet_route_table_association" "management" {
  subnet_id      = azurerm_subnet.management.id
  route_table_id = azurerm_route_table.hub.id
}
