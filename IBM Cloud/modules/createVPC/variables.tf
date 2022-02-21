variable "resource_group" {
  description = "Name of resource group to create VPC"
  type        = string
  default     = "default"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "myvpc"
}

variable "transit_vpc_name" {
  description = "Name of an existing transit VPC"
}

variable "ssh-key-name" {
  description = "Name of SSH Key"
  type        = string
  default     = "my-ssh-key"
}

variable "ssh-key" {
  description = "SSH Key"
  type        = string
}

variable "address_prefix_management" {
  description = "Use the default VPC address prefix or not"
  type        = string
}

variable "region" {
  description = "Where to create the resources"
  type        = string
}

variable "ibmcloud_api_key" {
  sensitive = true
}

variable "vpc-prefixes" {
  type    = list(any)
  default = ["10.1.0.0/16", "10.2.0.0/16", "10.3.0.0/16"]

}

variable "vpc-subnets" {
  type    = list(any)
  default = ["10.1.0.0/24", "10.2.0.0/24", "10.3.0.0/24"]

}


