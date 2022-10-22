############## Association of Private Route Table with Private Subnet ###################
resource "aws_route_table_association" "private_rt_association" {
  subnet_id = aws_subnet.private_subnet.id
  # route_table_id = data.aws_route_table.private_rt.id
  route_table_id = aws_route_table.Sandbox-private-route.id
}
