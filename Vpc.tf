resource "aws_vpc" "Sandbox-vpc" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "Sandbox-vpc"
  }
}