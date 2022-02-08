variable "ibmcloud_api_key" {
    sensitive   = true
}

variable "region" {
    description = "Where to create the resources"
    default     = "us-south"
    type        = string
}

variable resource_group {
    description = "Name of resource group to create VPC"
    type        = string
    default     = "default"
}

variable vpc_name {
    description = "Name of VPC"
    type        = string
    default     = "cs-vpc"
}

variable ssh-key-name {
    description = "Name of SSH Key"
    type        = string
    default     = "crs-mbp-key"
}

variable ssh-key {
  description = "SSH Key"
  type        = string
}

variable vsi-image {
    description = "Name of the VSI images to use"
    type        = string
    default     = "ibm-redhat-7-9-minimal-amd64-4"
}

variable vsi-profile {
    description = "Profile of the VSI to use"
    type        = string
    default     = "bx2-4x16"
}

variable address_prefix_management {
  description = "Use the default VPC address prefix or not"
  type        = string
  default = "manual"
}

variable zone1-prefix {
  description = "Address prefix for zone 1 in the vpc"
  type        = string
  default = "10.1.0.0/16"
}

variable zone2-prefix {
  description = "Address prefix for zone 2 in the vpc"
  type        = string
  default = "10.2.0.0/16"
}

variable zone3-prefix {
  description = "Address prefix for zone 3 in the vpc"
  type        = string
  default = "10.3.0.0/16"
}

variable zone1-subnet {
  description = "Subnet for zone 1 in the vpc"
  type        = string
  default = "10.1.0.0/24"
}

variable zone2-subnet {
  description = "Subnet for zone 2 in the vpc"
  type        = string
  default = "10.2.0.0/24"
}

variable zone3-subnet {
  description = "Subnet for zone 3 in the vpc"
  type        = string
  default = "10.3.0.0/24"
}

variable sat_location_name {
  description = "IBM Cloud Satellite name"
  type        = string
  default = "MoonBase"
}

variable sat_managed_from {
  description = "IBM Cloud Location to manage the Satellite"
  type        = string
  default = "dal12"
}

