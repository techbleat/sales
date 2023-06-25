module "provision_ec2_1" {
  source = "git::https://github.com/techbleat/modules.git"
  machine_name ="Sales first machine"
}

module "provision_ec2_2" {
  source = "git::https://github.com/techbleat/modules.git"
  machine_name = "Sales second machine"
  key_name = "test100"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}