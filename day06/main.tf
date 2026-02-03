resource "aws_instance" "ec2" {
  region                      = var.region
  ami                         = "ami-0c398cb65a93047f2"
  instance_type               = "t2.micro"
  count                       = var.instance_count
  monitoring                  = var.monitoring
  associate_public_ip_address = var.public_ip
 
  tags = var.example-of-map
}

resource "aws_security_group" "allow_tls" {
  name        = "test-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = var.example-of-map
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr_blocks[2]
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
  region            = var.region_list[2]
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
  region            = var.region_list[2]
}