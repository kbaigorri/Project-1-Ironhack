resource "azurerm_network_interface" "nic1" {

name =  "nic-1"

location = azurerm_resource_group.myRg.location
resource_group_name = azurerm_resource_group.myRg.name

ip_configuration {
  name = "ipconfig1"
  subnet_id =  azurerm_subnet.subnet1.id
  private_ip_address_allocation = "Dynamic"
  public_ip_address_id =  azurerm_public_ip.my_public_ip.id
}

}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example1" {
  network_interface_id      = azurerm_network_interface.nic1.id
  network_security_group_id = azurerm_network_security_group.NSGFront.id
}




resource "azurerm_network_interface" "nic2" {
  
name =  "nic-2"

location = azurerm_resource_group.myRg.location
resource_group_name = azurerm_resource_group.myRg.name

ip_configuration {
  name = "ipconfig2"
  subnet_id = azurerm_subnet.subnet1.id
  private_ip_address_allocation = "Dynamic"
  public_ip_address_id =  azurerm_public_ip.my_public_ip2.id
}

}

resource "azurerm_network_interface_security_group_association" "example2" {
  network_interface_id      = azurerm_network_interface.nic2.id
  network_security_group_id = azurerm_network_security_group.NSGBack.id
}



resource "azurerm_network_interface" "nic3" {
  
name =  "nic-3"

location = azurerm_resource_group.myRg.location
resource_group_name = azurerm_resource_group.myRg.name

ip_configuration {
  name = "ipconfig3"
  subnet_id =  azurerm_subnet.subnet1.id
  private_ip_address_allocation = "Dynamic"
  public_ip_address_id =  azurerm_public_ip.my_public_ip3.id
  
}

}

resource "azurerm_network_interface_security_group_association" "example3" {
  network_interface_id      = azurerm_network_interface.nic3.id
  network_security_group_id = azurerm_network_security_group.NSGdb.id
}