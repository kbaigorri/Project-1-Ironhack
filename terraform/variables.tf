variable "resource_group_name" {
  type        = string
  description = "This variable holds the values of the resource group names"
}

variable "location" {

  type        = string
  description = "This variable holds the value of the location"

  default = "West Europe"

}

variable "vm_instances" {
  type = map(object({
    network_interface_id = string
    size = string
  }))
}

variable "admin_username" {
  type = string
  description = "VMs Adm username"
  
}

variable "admin_password" {
  type = string
  description = "VMs Adm password"
  
}

variable "vm_size" {
  type = string
}


variable "tags" {

  type        = any
  description = "Tags"


}

variable "security_rule" {
  type = map(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}