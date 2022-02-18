data "ibm_is_image" "vsi_image" {
  name = var.vsi-image
}

resource "ibm_is_instance" "instance_master001" {
  name    = "master001"
  image   = data.ibm_is_image.vsi_image.id
  profile = var.vsi-profile

  primary_network_interface {
    subnet = module.myvpc.vpc_zone1_subnet1
  }

  vpc  = module.myvpc.vpc_instance_id
  zone = "${var.region}-1"
  keys = [module.myvpc.ssh_key_id]

  provisioner "local-exec" {
    command = "echo ${self.primary_network_interface[0].primary_ipv4_address} >> private_ips.txt"
  }

}

resource "ibm_is_instance" "instance_master002" {
  name    = "master002"
  image   = data.ibm_is_image.vsi_image.id
  profile = var.vsi-profile

  primary_network_interface {
    subnet = module.myvpc.vpc_zone2_subnet1
  }

  vpc  = module.myvpc.vpc_instance_id
  zone = "${var.region}-2"
  keys = [module.myvpc.ssh_key_id]

  provisioner "local-exec" {
    command = "echo ${self.primary_network_interface[0].primary_ipv4_address} >> private_ips.txt"
  }

}

resource "ibm_is_instance" "instance_master003" {
  name    = "master003"
  image   = data.ibm_is_image.vsi_image.id
  profile = var.vsi-profile

  primary_network_interface {
    subnet = module.myvpc.vpc_zone3_subnet1
  }

  vpc  = module.myvpc.vpc_instance_id
  zone = "${var.region}-3"
  keys = [module.myvpc.ssh_key_id]

  provisioner "local-exec" {
    command = "echo ${self.primary_network_interface[0].primary_ipv4_address} >> private_ips.txt"
  }

}

resource "ibm_is_instance" "instance_worker001" {
  name    = "worker001"
  image   = data.ibm_is_image.vsi_image.id
  profile = var.vsi-profile

  primary_network_interface {
    subnet = module.myvpc.vpc_zone1_subnet1
  }

  vpc  = module.myvpc.vpc_instance_id
  zone = "${var.region}-1"
  keys = [module.myvpc.ssh_key_id]

  provisioner "local-exec" {
    command = "echo ${self.primary_network_interface[0].primary_ipv4_address} >> private_ips.txt"
  }

}

resource "ibm_is_instance" "instance_worker002" {
  name    = "worker002"
  image   = data.ibm_is_image.vsi_image.id
  profile = var.vsi-profile

  primary_network_interface {
    subnet = module.myvpc.vpc_zone2_subnet1
  }

  vpc  = module.myvpc.vpc_instance_id
  zone = "${var.region}-2"
  keys = [module.myvpc.ssh_key_id]

  provisioner "local-exec" {
    command = "echo ${self.primary_network_interface[0].primary_ipv4_address} >> private_ips.txt"
  }

}

resource "ibm_is_instance" "instance_worker003" {
  name    = "worker003"
  image   = data.ibm_is_image.vsi_image.id
  profile = var.vsi-profile

  primary_network_interface {
    subnet = module.myvpc.vpc_zone3_subnet1
  }

  vpc  = module.myvpc.vpc_instance_id
  zone = "${var.region}-3"
  keys = [module.myvpc.ssh_key_id]

  provisioner "local-exec" {
    command = "echo ${self.primary_network_interface[0].primary_ipv4_address} >> private_ips.txt"
  }

}