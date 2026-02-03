## Set some variables
variable "Env" {
  default = "dev"
  type    = string
}

variable "region" {
  default = "us-east-1"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "monitoring" {
  description = "Detailed monitoring want to enable"
  default     = "true"
  type        = bool
}

variable "public_ip" {
  description = "Associate public ip address"
  default     = false
  type        = bool
}

variable "sg-name" {
  description = "this security-group name"
  default     = "allow_tls"
  type        = string
}

variable "cidr_blocks" {
  description = "allow subnets you can provide list or single"
  type        = list(string)
  default     = ["10.0.0.0/16", "192.168.1.0/24", "172.16.0.0/25"]
}

variable "region_list" {
  description = "Examle fo set"
  type        = list(string)
  default     = ["us-east-1", "us-west-1", "ap-south-1"]
}


variable "example-of-map" {
  description = "this the example of map type of variable"
  type = map(string)
  default = {
    "name" = "dev-ec2-server"
    "Environment"  = "dev"
    "created_by" = "terrafrom"
  }
}


locals {
  s3_bucket_name = "vf-terraform-tst-bkt-${var.Env}"
}

locals {
  vpc_cidr_name = "my-test-vpc-${var.Env}"
}

variable "myvar" {
  description = "value"
  sensitive = true
}
