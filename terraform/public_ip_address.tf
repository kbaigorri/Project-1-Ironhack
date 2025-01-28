resource "azurerm_public_ip" "my_public_ip" {
  name                = "publicAddress"
  location            = var.location
  resource_group_name = azurerm_resource_group.myRg.name
  allocation_method   = "Dynamic"

  tags = var.tags
}

resource "azurerm_public_ip" "my_public_ip2" {
  name                = "publicAddress2"
  location            = var.location
  resource_group_name = azurerm_resource_group.myRg.name
  allocation_method   = "Dynamic"

  tags = var.tags
}

resource "azurerm_public_ip" "my_public_ip3" {
  name                = "publicAddress3"
  location            = var.location
  resource_group_name = azurerm_resource_group.myRg.name
  allocation_method   = "Dynamic"

  tags = var.tags
}