# output "private_ip" {
#    value       = aws_instance.Service_instances.private_ip
#   description = "The private IP address assigned to the instance"
# }
# output "password_data" {
#    value       = aws_instance.Service_instances.password_data
#   description = "The private IP address assigned to the instance"
#   sensitive = true
# }

# output "private_ips" {
#   value = [
#     for ip in aws_instance.Service_instances : ip.private_ip
#   ]  
#   description = "The list of private IP address assigned to the instance"
# }