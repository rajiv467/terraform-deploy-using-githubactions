resource "aws_subnet" "public_subnet_j" {
  vpc_id                  = aws_vpc.Sandbox-vpc.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_j"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.Sandbox-vpc.id
  cidr_block              = var.private_subnet_cidr_block
  map_public_ip_on_launch = false
  availability_zone       = var.availability_zone

  tags = {
    Name = "Sandbox-private-subnet"
    type = "private"
  }
}
