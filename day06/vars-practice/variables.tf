# String variable examples
variable "server-type" {
  default = "t2.micro"
  type    = string
}

variable "server-name" {
  default = "my-ec2-server"
  type    = string
}

# Number variable example

variable "ec2-server-count" {
  default = 3
  type    = number
}

# Boolean variable example
variable "enable-monitoring" {
    default = true
    type    = bool
    }
variable "public-false" {
  default = false
  type    = bool
}

# List variable example
variable "availblity_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  type    = list(string)
}


#map variable example
variable "tags" {
  default = {
    Owner = "DevOpsTeam"
    Project = "TerraformDemo"
    Environment = "Development"
  }
  type = map(string)
}

variable "ami_ids" {
  default = {
    dev = "ami-0c94855ba95c71c99"
    prod = "ami-0d5d9d301c853a04a"
    uat = "ami-0c94855ba95c71c99"
  }
}

variable "instance_config" {
  default = {
    dev = {
      ami           = "ami-0c94855ba95c71c99"
      instance_type = "t2.micro"
    }
    prod = {
      ami           = "ami-0d5d9d301c853a04a"
      instance_type = "t2.medium"
    }
  }
   type = map(object({
    ami           = string
    instance_type = string
  }))
}

variable "ec2-server-config" {
  default = {
    uat ={
      ami = "ami-0c94855ba95c71c99"
      instance_type = "t2.micro"
      monitoring = false
      key_name = "my-key-pair"
    }
    prod = {
      ami = "ami-0d5d9d301c853a04a"
      instance_type = "t2.medium"
      monitoring = true
      key_name = "my-key-pair"
    }
    dev = {
      ami = "ami-0c94855ba95c71c99"
      instance_type = "t2.micro"
      monitoring = true
      key_name = "my-key-pair"
    }
    type = map(object({
      ami = string
      instance_type = string
      monitoring = bool
      key_name = string
    }))
  }
}

# object variable example
variable "instance_config_1" {
  type = object({
    instance_type = string
    ami           = string
    count         = number
  })
  default = {
    instance_type = "t2.micro"
    ami           = "ami-0c55b159cbfafe1f0"
    count         = 1
  }
}


variable "instance_config" {
  default = {
    dev = {
      ami           = "ami-0c94855ba95c71c99"
      instance_type = "t2.micro"
    }
    prod = {
      ami           = "ami-0d5d9d301c853a04a"
      instance_type = "t2.medium"
    }
  }
   type = map(object({
    ami           = string
    instance_type = string
  }))
}

variable "ec2-server-config" {
  default = {
    uat ={
      ami = "ami-0c94855ba95c71c99"
      instance_type = "t2.micro"
      monitoring = false
      key_name = "my-key-pair"
    }
    prod = {
      ami = "ami-0d5d9d301c853a04a"
      instance_type = "t2.medium"
      monitoring = true
      key_name = "my-key-pair"
    }
    dev = {
      ami = "ami-0c94855ba95c71c99"
      instance_type = "t2.micro"
      monitoring = true
      key_name = "my-key-pair"
    }
    type = map(object({
      ami = string
      instance_type = string
      monitoring = bool
      key_name = string
    }))
  }
}

#================
variable "my-vars" {
  type = map(object({
    name     = string
    age      = number
    is_admin = bool
  }))
  default = {
    "alice" = {
      name     = "Alice"
      age      = 30
      is_admin = true
    }
    "bob" = {
      name     = "Bob"
      age      = 25
      is_admin = false
    }
    john = {
      name     = "John"
      age      = 28
      is_admin = false
    }
}
}