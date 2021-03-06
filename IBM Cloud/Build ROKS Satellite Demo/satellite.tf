resource "ibm_satellite_location" "sat" {
  location          = var.sat_location_name
  managed_from      = var.sat_managed_from
  resource_group_id = module.myvpc.resource_group
}

data "ibm_satellite_attach_host_script" "script" {
  location      = ibm_satellite_location.sat.location
  host_provider = "ibm"
  script_dir    = "/tmp"

}

resource "null_resource" "cluster" {
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u root -i private_ips.txt ~/Documents/GitHub/ansible/setupSatHosts.yaml"
  }
  depends_on = [data.ibm_satellite_attach_host_script.script]
}


data "ibm_satellite_location" "sat" {
  location = var.sat_location_name
}

output "name" {
  value = data.ibm_satellite_location.sat.hosts[0].host_id
}

resource "ibm_satellite_host" "assign_master001" {
  location      = ibm_satellite_location.sat.id
  host_id       = data.ibm_satellite_location.sat.hosts[0].host_id
  zone          = "${var.region}-1"
  host_provider = "ibm"
}

resource "ibm_satellite_host" "assign_master002" {
  location      = ibm_satellite_location.sat.id
  host_id       = data.ibm_satellite_location.sat.hosts[1].host_id
  zone          = "${var.region}-2"
  host_provider = "ibm"
}

resource "ibm_satellite_host" "assign_master003" {
  location      = ibm_satellite_location.sat.id
  host_id       = data.ibm_satellite_location.sat.hosts[2].host_id
  zone          = "${var.region}-3"
  host_provider = "ibm"
}
