# module "vpc" {
#   source = "git::https://github.com/RanaSiddireddi/tf-module-vpc.git"
# }

module "vpc" {
  source   = "./vendor/modules/vpc"
  VPC_CIDR = var.VPC_CIDR
  ENV      = var.ENV
}

