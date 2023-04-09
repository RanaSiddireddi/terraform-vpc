# module "vpc" {
#   source = "git::https://github.com/RanaSiddireddi/tf-module-vpc.git"
# }

module "vpc" {
  source   = "./vendor/modules/vpc"
  VPC_CIDR = var.VPC_CIDR
  ENV      = var.ENV
  AZ       = var.AZ
  PUBLIC_SUBNET_CIDR = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  DEFAULT_VPC_CIDR = var.DEFAULT_VPC_CIDR
  DEFAULT_RT_ID = var.DEFAULT_RT_ID
}

