terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.30.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


################## Create Resource

resource "aws_vpc" "example" {
  cidr_block = "192.168.0.0/25"
}

