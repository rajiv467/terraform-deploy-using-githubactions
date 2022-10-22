# data "aws_vpc" "vpc" {

#   filter {
#     name   = "tag:Name"
#     values = ["${var.project}_VPC"]
#   }
# }

# data "aws_route_table" "private_rt" {

#   filter {
#     name   = "tag:Name"
#     values = ["${var.project}_private_routetable"]
#   }
# }

# data "aws_security_group" "sec_grp" {

#   filter {
#     name   = "tag:Name"
#     values = ["${var.project}_sec_grp"]
#   }
# }

# # data "aws_ami" "storage_ami" {
# #   most_recent = true
# #   owners      = ["amazon"]
# #   filter {
# #     name   = "name"
# #     values = ["Windows_Server-2019-English-Full-Base*"]
# #   }
# # }
