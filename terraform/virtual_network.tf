resource "azurerm_virtual_network" "myVNet" {

  name = "Vnet"
  address_space = [ "10.0.0.0/16" ]
  location = var.location
  resource_group_name = azurerm_resource_group.myRg.name

tags = var.tags
}