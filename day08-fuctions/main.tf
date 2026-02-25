locals {
#  formated_name = lower(replace(var.bucket-name, " ", "-"))
  using-locals-merge-tags = merge(var.default-tags, var.Evn-based-tags)
}

locals {
  my-s3-bucker-name = lower(replace(replace(replace(substr(var.bucket-name, 0, 63), " ", "-"), "!", ""), "." , ""))
  }

locals {
  port-lists = split(",", var.allowd-ports)

  sg_rules = [  for port in local.port-lists :
  {
    name = "allow-port-${port}"
    description = "Allow traffic on port ${port}"
    port = port
    protocol = "tcp"
    from_port = port
    cidr_blocks = ["0.0.0.0/0"]
  } 

  ]
}

locals {
  instance-size-by-env = lookup(var.instance_sizes, var.environment, "t2.micro")
}

#concat example
locals {
  locations = concat(var.all-locations,var.default-locations)
  unique-locations = toset(local.locations)  # to remove duplicate values from the list of locations

}

#resource "aws_s3_bucket" "my_bucket" {
#  bucket = local.formated_name
#  tags = {
#    ENV = var.buket-ENV
#    Region = var.Region-code
#    Created_by = var.Created-by
#  }
#}

resource "aws_s3_bucket" "with-default-tags" {
  bucket = local.my-s3-bucker-name
#  tags = local.using-locals-merge-tags
 tags = merge(var.default-tags, var.Evn-based-tags)
}