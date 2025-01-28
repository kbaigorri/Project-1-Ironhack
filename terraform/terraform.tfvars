
resource_group_name = "myRg1"
location            = "West Europe"
tags = {
  Environment = "Test"
}


vm_instances =¨{
  vm1 = {
    network_interface_id = "VMVote"
    size = "Standard_DS1_v2"
  }
  vm2 = {
    network_interface_id = "VMResult"
    size = "Standard_DS1_v2"
  }
  vm3 = {
    network_interface_id = "VMdb"
    size = "Standard_DS1_v2"
  }
}
admin_username = "adminuser"
admin_password = "123456"




security_rule = {
  allow_ssh = {
    name                       = "AllowSSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  allow_http = {
    name                       = "AllowHTTP"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

subnets = {
  public_subnet = {
    cidr_block = "10.0.1.0/24"
  }
 
  private_subnet = {
    cidr_block = "10.0.2.0/24"
  }
}