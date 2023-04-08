provider "aws" {
    region = "us-east-1"
}

#declaring he remote statefile
terraform {
  backend "s3" {}
}
