resource "azurerm_linux_virtual_machine" "web_vm" {
  for_each            = var.vm_instances
  name                = each.key
  resource_group_name = azurerm_resource_group.myRg.name
  location            = azurerm_resource_group.myRg.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password 

  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id // This should dynamically reference based on the VM type
  ]

  os_disk {
    caching = "ReadWrite"
    storage_account_type  = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  tags = {
    Name = each.key
  }
}