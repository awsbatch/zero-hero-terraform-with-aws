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

################## Create Resource
resource "aws_s3_bucket" "testbucket" {
  bucket = "vf-terraform-tst-bkt"

  tags = {
    Name = "My-bucket-01"
    Env  = "dev"
  }
}
