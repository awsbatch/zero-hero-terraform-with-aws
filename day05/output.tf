output "elastic_ip" {
  value = aws_instance.ec2.associate_public_ip_address
}

output "vpc-id" {
  value = aws_vpc.myvpc.id
}

output "instance_type" {
  value = aws_instance.ec2.instance_type
}