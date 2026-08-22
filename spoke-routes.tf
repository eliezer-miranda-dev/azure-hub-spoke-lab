resource "azurerm_route_table" "spoke" {
  name                = "rt-spoke-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
}
resource "azurerm_subnet_route_table_association" "app" {
  subnet_id      = azurerm_subnet.app.id
  route_table_id = azurerm_route_table.spoke.id
}
