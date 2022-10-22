# create a VPC internet gateway
resource "aws_internet_gateway" "Sandbox-igw" {
  vpc_id = aws_vpc.Sandbox-vpc.id

  tags = {
    Name = "Sandbox-igw"
  }
}

# create a VPC routing table
resource "aws_route_table" "Sandbox-public-route" {
  vpc_id = aws_vpc.Sandbox-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Sandbox-igw.id
  }

  tags = {
    Name = "Sandbox-public-route"
  }
}

# create an association between a route table and a subnet 
resource "aws_route_table_association" "Sandbox_public_association" {
  subnet_id      = aws_subnet.public_subnet_j.id
  route_table_id = aws_route_table.Sandbox-public-route.id
}


# creates Elastic IP resource, having explicit dependency on the IGW.
resource "aws_eip" "Sandbox_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.Sandbox-igw]

  tags = {
    Name = "Sandbox_eip"
  }
}


resource "aws_nat_gateway" "Sandbox_nat_gw" {
  allocation_id = aws_eip.Sandbox_eip.id
  subnet_id     = aws_subnet.public_subnet_j.id

  tags = {
    Name = "Sandbox_nat_gw"
  }
}

resource "aws_route_table" "Sandbox-private-route" {
  vpc_id = aws_vpc.Sandbox-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.Sandbox_nat_gw.id
  }

  tags = {
    Name = "Sandbox-private-route"
  }
}


