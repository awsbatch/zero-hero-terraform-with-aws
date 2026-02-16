resource "aws_instance" "my-instance" {
  ami                         = "ami-0030e4319cbf4dbf2"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.pub_subnet.id
  security_groups             = [aws_security_group.allow-http-ssh.id]
  key_name                    = "my-terraform-key"
  user_data                   = file("nginx-install.sh")
  availability_zone           = "us-east-1a"
  associate_public_ip_address = true
  tags = {
    Name        = "My-EC2-Instance"
    Environment = "testing"
  }
}