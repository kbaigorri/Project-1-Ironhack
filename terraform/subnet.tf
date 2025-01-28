resource "azurerm_subnet" "subnet" {
  for_each = var.subnets

  name                 = each.key
  resource_group_name  = azurerm_resource_group.myRg.name
  virtual_network_name = azurerm_virtual_network.myVNet.name
  address_prefixes     = [each.value.cidr_block]

}