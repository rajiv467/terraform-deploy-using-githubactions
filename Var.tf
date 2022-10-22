variable "AWS_ACCESS_KEY" {
  default = ""
}

variable "AWS_SECRET_KEY" {
  default = ""
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "environment" {
  description = "team environment to create testing infrastructure"
  type        = string
}

variable "project" {
  description = "project name"
  type        = string
}


