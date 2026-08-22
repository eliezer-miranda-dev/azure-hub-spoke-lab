resource "azurerm_route_table" "hub" {
  name                = "rt-hub-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
}
