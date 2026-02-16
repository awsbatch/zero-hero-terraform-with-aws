resource "aws_subnet" "pub_subnet" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.pb_subnet
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name        = "Public Subnet"
    Environment = "testing"
  }
}

resource "aws_subnet" "prb_subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.prb_subner
  availability_zone = "us-east-1b"
  tags = {
    Name        = "Private Subnet"
    Environment = "testing"
  }
}