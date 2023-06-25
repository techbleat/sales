module "provision_ec2_1" {
  source = "git::https://github.com/techbleat/modules.git"
  machine_name =var.sales_1_machine_name
}

module "provision_ec2_2" {
  source = "git::https://github.com/techbleat/modules.git"
  machine_name = var.sales_2_machine_name
  machine_key = var.sales_2_key_name
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

variable sales_1_machine_name {}
variable sales_2_machine_name {}
variable sales_1_key_name {}
variable sales_2_key_name {}