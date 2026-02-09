resource "aws_instance" "my-ec2" {
  #ami           = "ami-0c94855ba95c71c99"
  ami = var.ami_ids["prod"]
  instance_type = var.server-type
  count = var.ec2-server-count
  monitoring = var.enable-monitoring
  associate_public_ip_address = var.public-false
  availability_zone = var.availblity_zones[count.index]
  tags = var.tags

 # tags = {
 #   Name      = var.server-name
 #   Env       = "dev"
 #   CreatedBy = "Terraform"
 # }
}