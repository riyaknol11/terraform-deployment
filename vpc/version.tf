terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""

}

resource "aws_vpc" "newvpc" {
  cidr_block = "20.0.0.0/16"

  tags = {
    Name = "NewVPC"
  }
}
