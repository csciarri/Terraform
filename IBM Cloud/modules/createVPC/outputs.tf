output "vpc_instance_id" {
  value = ibm_is_vpc.vpc1.id
}

output "ssh_key_id" {
  value = ibm_is_ssh_key.isKey.id
}

output "vpc_zone1_prefix" {
  value = ibm_is_vpc_address_prefix.vpc1_address_prefix1.id
}

output "vpc_zone2_prefix" {
  value = ibm_is_vpc_address_prefix.vpc1_address_prefix2.id
}

output "vpc_zone3_prefix" {
  value = ibm_is_vpc_address_prefix.vpc1_address_prefix3.id
}

output "vpc_zone1_subnet1" {
  value = ibm_is_subnet.vpc1_subnet1.id
}

output "vpc_zone2_subnet1" {
  value = ibm_is_subnet.vpc1_subnet2.id
}

output "vpc_zone3_subnet1" {
  value = ibm_is_subnet.vpc1_subnet3.id
}

output "resource_group" {
  value = data.ibm_resource_group.rg.id
}