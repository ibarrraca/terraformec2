terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "acg"
  region  = "us-west-2"
}

module "ec2mod" {
  source = "./ec2mod"
}
