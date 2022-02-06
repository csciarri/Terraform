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

resource "ibm_is_vpc_address_prefix" "vpc1_address_prefix1" {
  name = "zone1-prefix"
  zone = "${var.region}-1"
  vpc  = ibm_is_vpc.vpc1.id
  cidr = var.zone1-prefix
}

resource "ibm_is_vpc_address_prefix" "vpc1_address_prefix2" {
  name = "zone2-prefix"
  zone = "${var.region}-2"
  vpc  = ibm_is_vpc.vpc1.id
  cidr = var.zone2-prefix
}

resource "ibm_is_vpc_address_prefix" "vpc1_address_prefix3" {
  name = "zone3-prefix"
  zone = "${var.region}-3"
  vpc  = ibm_is_vpc.vpc1.id
  cidr = var.zone3-prefix
}