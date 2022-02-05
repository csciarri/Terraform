data "ibm_resource_group" "rg" {
    name = var.resource_group
}

resource "ibm_is_vpc" "vpc1" {
  name = var.vpc_name
  resource_group = data.ibm_resource_group.rg.id
}

