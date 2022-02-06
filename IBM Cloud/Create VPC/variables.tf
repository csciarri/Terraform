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
  default     = "cs-key"
}

variable ssh-key {
  description = "SSH Key"
  type        = string
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