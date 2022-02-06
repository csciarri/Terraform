data "ibm_resource_group" "rg" {
    name = var.resource_group
}

resource "ibm_is_vpc" "vpc1" {
  name = var.vpc_name
  resource_group = data.ibm_resource_group.rg.id
  address_prefix_management = var.address_prefix_management
}

resource "ibm_is_ssh_key" "isKey" {
  name       = var.ssh-key-name
  public_key = var.ssh-key
}