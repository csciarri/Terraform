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

