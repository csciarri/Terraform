resource "ibm_satellite_location" "sat" {
  location          = var.sat_location_name
  managed_from      = var.sat_managed_from
  resource_group_id = data.ibm_resource_group.rg.id
}

data "ibm_satellite_attach_host_script" "script" {
  location          = ibm_satellite_location.sat.location
  host_provider     = "ibm"
  script_dir        = "/tmp"
  
}