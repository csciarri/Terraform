module "myvpc" {
  source                    = "../modules/createVPC"
  ibmcloud_api_key          = var.ibmcloud_api_key
  vpc_name                  = var.vpc_name
  region                    = var.region
  ssh-key-name              = var.ssh-key-name
  ssh-key                   = var.ssh-key
  address_prefix_management = var.address_prefix_management
  vpc-subnets               = var.vpc-subnets
  vpc-prefixes              = var.vpc-prefixes
  resource_group            = var.resource_group
}