# Terraform Block
terraform {
  required_version = ">= 1.2.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provider Block
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAR5JIQX64NMKDRQOY"
  secret_key = "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"
}