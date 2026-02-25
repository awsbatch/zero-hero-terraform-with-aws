variable "bucket-name" {
  description = "bucket name use in fuctions"
  default = "MY ravendra rana Bucket he is working in valuefirst!!! Gurgaon........."
  type = string
}


variable "buket-ENV" {
  default = "Testing"
}

variable "Region-code" {
  default = "India"
}

variable "Created-by" {
  default = "terraform"
}

variable "default-tags" {
  default = {
    company = "ValueFirst"
    Region = "India"
    Created_by = "terraform"
  }
}

variable "Evn-based-tags" {
  default = {
    ENV = "Testing"
    cost-center = "cs-123"
  }
}

variable "allowd-ports" {
  default = "22,80,443,8080,3306"
}

variable "instance_sizes" {
  default = {
    dev = "t2.micro"
    prod = "t3.medium"
    test = "t2.small"
  }
}

variable "environment" {
  default = "dev"
}

# This variable is used to demonstrate validation rules for instance types

variable "instance-type" {
  default = "t3.2xlarge"

  validation {
    condition = length(var.instance-type) >= 2 && length(var.instance-type) <= 10
    error_message = "The instance type must be between 2 and 10 characters long."
  }

  validation {
    condition = can(regex("^t[2,3]\\.", var.instance-type))
    error_message = "Instance type must start with t2 or t3"
  }
}

variable "all-locations" {
  default = ["us-east-1", "us-west-2", "us-west-2", "ap-southeast-1"]
}

variable "default-locations" {
  default = ["us-east-1"]
}