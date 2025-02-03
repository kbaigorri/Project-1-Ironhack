resource "azurerm_linux_virtual_machine" "web_vm1" {
  name                            = "VM1"
  resource_group_name             = azurerm_resource_group.myRg.name
  location                        = azurerm_resource_group.myRg.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [azurerm_network_interface.nic1.id] // This should dynamically reference based on the VM type

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  tags = {
    Name = "VM1"
  }
}


resource "azurerm_linux_virtual_machine" "web_vm2" {
  name                            = "VM2"
  resource_group_name             = azurerm_resource_group.myRg.name
  location                        = azurerm_resource_group.myRg.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [azurerm_network_interface.nic2.id] // This should dynamically reference based on the VM type

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  tags = {
    Name = "VM2"
  }
}



resource "azurerm_linux_virtual_machine" "web_vm3" {
  name                            = "VM3"
  resource_group_name             = azurerm_resource_group.myRg.name
  location                        = azurerm_resource_group.myRg.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [azurerm_network_interface.nic3.id] // This should dynamically reference based on the VM type

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  tags = {
    Name = "VM3"
  }
}