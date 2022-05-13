# Terraform Settings Block
terraform {
  required_version = "= 1.1.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.64"
    }
  }
}

# Provider Block
provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  alias  = "us-east"
  region = "us-east-1"
}