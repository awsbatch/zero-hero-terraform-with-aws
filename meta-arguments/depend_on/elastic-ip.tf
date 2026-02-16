resource "aws_eip" "elastic_ip" {
  instance   = aws_instance.my-instance.id
  region     = "us-east-1"
  domain     = "vpc"
  depends_on = [aws_internet_gateway.igw]
}
