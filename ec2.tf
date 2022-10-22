resource "aws_instance" "Service_instances" {
  # for_each               = { for vm in var.configuration : vm.count => vm }

  ami           = var.ami
  instance_type = var.inst_type
  # subnet_id              = aws_subnet.private_subnet.id
  subnet_id                = aws_subnet.public_subnet_j.id
  # vpc_security_group_ids = ["${data.aws_security_group.sec_grp.id}"]
  vpc_security_group_ids = [aws_security_group.Sandbox-sg.id]
  key_name               = var.key_name
  get_password_data      = "true"
  //user_data              = file("${path.module}/${each.value.userdata}")
  tags = {
    # Name = "${var.environment}_${each.value.name}"
    Name = "Service_instances"
  }
}
