variable "resource_group" {
  description = "Name of resource group to create VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
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
  type = list(any)
}

variable "vpc-subnets" {
  type = list(any)
}


