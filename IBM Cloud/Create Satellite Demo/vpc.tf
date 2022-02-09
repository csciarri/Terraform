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

resource "ibm_is_public_gateway" "zone1_gateway" {
  name = "zone1-gateway"
  vpc  = ibm_is_vpc.vpc1.id
  zone = "${var.region}-1"
}

resource "ibm_is_public_gateway" "zone2_gateway" {
  name = "zone2-gateway"
  vpc  = ibm_is_vpc.vpc1.id
  zone = "${var.region}-2"
}

resource "ibm_is_public_gateway" "zone3_gateway" {
  name = "zone3-gateway"
  vpc  = ibm_is_vpc.vpc1.id
  zone = "${var.region}-3"
}

resource "ibm_is_subnet" "vpc1_subnet1" {
  name = "${var.region}-1-subnet"
  zone = "${var.region}-1"
  vpc  = ibm_is_vpc.vpc1.id
  public_gateway  = ibm_is_public_gateway.zone1_gateway.id
  ipv4_cidr_block = var.zone1-subnet
   depends_on      = [
    ibm_is_vpc_address_prefix.vpc1_address_prefix1
  ]
}

resource "ibm_is_subnet" "vpc1_subnet2" {
  name = "${var.region}-2-subnet"
  zone = "${var.region}-2"
  vpc  = ibm_is_vpc.vpc1.id
  public_gateway  = ibm_is_public_gateway.zone2_gateway.id
  ipv4_cidr_block = var.zone2-subnet
   depends_on      = [
    ibm_is_vpc_address_prefix.vpc1_address_prefix2
  ]
}

resource "ibm_is_subnet" "vpc1_subnet3" {
  name = "${var.region}-3-subnet"
  zone = "${var.region}-3"
  vpc  = ibm_is_vpc.vpc1.id
  public_gateway  = ibm_is_public_gateway.zone3_gateway.id
  ipv4_cidr_block = var.zone3-subnet
   depends_on      = [
    ibm_is_vpc_address_prefix.vpc1_address_prefix3
  ]
}

resource "ibm_is_security_group_rule" "vpc_default_security_group_rule_ssh" {
  group = ibm_is_vpc.vpc1.default_security_group
  direction  = "inbound"
  remote    = "0.0.0.0/0"
  tcp {
    port_min = 22
    port_max = 22
  }
}

resource "ibm_is_security_group_rule" "vpc_default_security_group_rule_icmp" {
  group = ibm_is_vpc.vpc1.default_security_group
  direction  = "inbound"
  remote    = "0.0.0.0/0"
  icmp {
    type = 8
  }
}