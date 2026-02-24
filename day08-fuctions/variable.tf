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