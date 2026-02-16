## Set some variables
variable "Env" {
  default = "dev"
  type    = string
}

variable "region" {
  default = "us-east-1"
}

# locals variable
locals {
  s3_bucket_name = "vf-terraform-tst-bkt-${var.Env}"
}

locals {
  vpc_cidr_name = "my-test-vpc-${var.Env}"
}
