resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    "Name"        = "private-route-table"
    "Environment" = "testing"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    "Name"        = "public-route-table"
    "Environment" = "testing"
  }
}

resource "aws_route_table_association" "private_route_table_assoc" {
  subnet_id      = aws_subnet.prb_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "public_route_table_assoc" {
  subnet_id      = aws_subnet.pub_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
  depends_on             = [aws_internet_gateway.igw]
}

