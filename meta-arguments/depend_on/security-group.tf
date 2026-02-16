resource "aws_security_group" "allow-http-ssh" {
  name        = var.sg_name
  description = "Security group for my VPC"
  vpc_id      = aws_vpc.my-vpc.id
  tags = {
    Name        = "My-Vpc-Security-Group"
    Environment = "testing"
  }
}