terraform {
  backend "s3" {
    bucket       = "vfirst-state-file-bkt"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true

  }
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


## Set some variables
variable "Env" {
  default = "dev"
  type    = string
}

variable "region" {
  default = "us-east-1"
}

locals {
  s3_bucket_name = "vf-terraform-tst-bkt-${var.Env}"
}

locals {
  vpc_cidr_name = "my-test-vpc-${var.Env}"
}


################## Create Resource
resource "aws_s3_bucket" "testbucket" {
  bucket = "vf-terraform-tst-bkt"

  tags = {
    Name = "My-bucket-01"
    Env  = var.Env
  }
}

resource "aws_vpc" "myvpc" {
  cidr_block = "192.168.0.0/25"
  tags = {
    Env  = var.Env
    Name = local.vpc_cidr_name
  }
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c398cb65a93047f2"
  instance_type = "t2.micro"
  tags = {
    Env  = var.Env
    Name = "my-tst-ec2"
  }
}