module "provision_ec2" {
    source = "git::https://github.com/techbleat/modules.git"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
}

provider "aws" {
  region = "eu-west-1"
}
