locals {
  vpc_cidr_block = "10.100.0.0/16"

  # Calculate the first /24 subnet
  subnet_1_cidr = cidrsubnet(local.vpc_cidr_block, 8, 0) // Result: "10.100.0.0/24"

  # Get the 10th usable IP address in that subnet
  host_ip_in_subnet_1 = cidrhost(local.subnet_1_cidr, 10) // Result: "10.100.0.10"

  # Get the netmask for the subnet
  subnet_1_netmask = cidrnetmask(local.subnet_1_cidr) // Result: "255.255.255.0"

  # Generate a list of three /20 subnets from the VPC CIDR
  app_subnets = cidrsubnets(local.vpc_cidr_block, 4, 4, 4)
  # Result: ["10.100.0.0/20", "10.100.16.0/20", "10.100.32.0/20"]
}

output "vpc_cidr_block" {
  value = local.vpc_cidr_block
}

output "subnet_1_cidr" {
  value = local.subnet_1_cidr
}

output "host_ip_in_subnet_1" {
  value = local.host_ip_in_subnet_1
}

output "subnet_1_netmask" {
  value = local.subnet_1_netmask
}

output "app_subnets" {
  value = local.app_subnets
}

