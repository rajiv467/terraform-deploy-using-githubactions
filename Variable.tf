variable "vpc_cidr_block" {
  description = "VPC CIDR block."
  type        = string
  default     = "10.0.0.0/24"
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block of private subnets."
  type        = string
  default     = "10.0.0.0/26"
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block of private subnets."
  type        = string
  default     = "10.0.0.64/26"
}

variable "availability_zone" {
  description = "The CIDR block with which we want to associated the specified subnet."
  type        = string
  default     = "us-east-1a"
}

variable "inst_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "Sandboxkey"
}
variable "ami" {
  type    = string
  default = "ami-0f1ee03d06c4c659c"

}
# variable "configuration" {
#   description = "The total configuration, List of Objects/Dictionary"
#   #default = [{}]
#   default=[
#   {
#     "application_name" : "Test server 1",   
#     "count":0    
#     # "userdatafile" : "sqlserver.ps1"
#     "isenabled":false
#     "ami" : "ami-0f1ee03d06c4c659c"

#   },
#   {
#     "application_name" : "Test server 2",   
#     "count":1    
#     //"userdatafile" : "iis.ps1"
#     "isenabled":true
#     "ami" : "ami-0b3e423be2b1ed909"
#   },
#   {
#     "application_name" : "Test server 3",   
#     "count":2    
#     //"userdatafile" : "test.ps1"
#     "isenabled":false
#     "ami" : "ami-09893189de3a034b4"
#   }
# ]
# }

variable "key_path" {
  type    = string
  default = "Samdboxkey.pem"
}