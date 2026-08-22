resource "azurerm_public_ip" "firewall" {
  name                = "pip-firewall-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name

  allocation_method = "Static"
  sku               = "Standard"

  zones = ["1", "2", "3"]
}
