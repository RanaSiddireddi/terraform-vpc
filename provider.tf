provider "aws" {
    region = "us-east-1"
}

#declaring the remote statefile
terraform {
  backend "s3" {}
}
