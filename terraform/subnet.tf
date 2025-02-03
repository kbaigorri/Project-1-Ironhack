resource "azurerm_subnet" "subnet1" {

  name                 = "subnetPublica1"
  resource_group_name  = azurerm_resource_group.myRg.name
  virtual_network_name = azurerm_virtual_network.myVNet.name
  address_prefixes     = ["10.0.1.0/24"]

}
