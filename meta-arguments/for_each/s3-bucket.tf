#resource "aws_s3_bucket" "for_each_bucket" {
#  for_each = {
#    dev  = "dev-bucket-ravendra"
#    prod = "prod-bucket-ravendra"
#    test = "test-bucket-ravendra"
#  }
#  bucket = "${each.key}-${each.value}"
#  tags = {
#    Name = "${each.key}-${each.value}-demo"
#  }
#}

# for_each with set of string
#resource "aws_s3_bucket" "for_each_bucket" {
#  for_each = toset(["dev", "prod", "test"])
#  bucket = "${each.key}-bucket-ravendra"
#  tags = {
#    Name = "${each.key}-bucket-ravendra-demo"
#  }
#}

#for_each with map
#resource "aws_s3_bucket" "map_bucket_from_foreach" {
#  for_each = tomap({
#    dev  = "bucket-ravendra-map-with-foreach"
#    prod = "bucket-ravendra-map-with-foreach"
#    test = "bucket-ravendra-map-with-foreach"
#  })
#  bucket = "${each.key}-${each.value}"
#}