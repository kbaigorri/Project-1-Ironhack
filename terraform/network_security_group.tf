resource "azurerm_network_security_group" "NSGFront" {
  name                = "Front"
  location            = azurerm_resource_group.myRg.location
  resource_group_name = azurerm_resource_group.myRg.name

  dynamic "security_rule" {
    for_each = var.security_rule

    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      source_address_prefix      = security_rule.value.source_address_prefix
      destination_address_prefix = security_rule.value.destination_address_prefix
    }
  }

  tags = {
    environment = "Production"
  }
}

Resource "azurerm_network_security_group" "NSGBack" {
  name                = "Back"
  location            = azurerm_resource_group.myRg.location
  resource_group_name = azurerm_resource_group.myRg.name

  dynamic "security_rule" {
    for_each = var.security_rule

    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      source_address_prefix      = security_rule.value.source_address_prefix
      destination_address_prefix = security_rule.value.destination_address_prefix
    }
  }

  tags = {
    environment = "Production"
  }
}

Resource "azurerm_network_security_group" "NSGdb" {
  name                = "db"
  location            = azurerm_resource_group.myRg.location
  resource_group_name = azurerm_resource_group.myRg.name

  dynamic "security_rule" {
    for_each = var.security_rule

    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      source_address_prefix      = security_rule.value.source_address_prefix
      destination_address_prefix = security_rule.value.destination_address_prefix
    }
  }

  tags = {
    environment = "Production"
  }
}