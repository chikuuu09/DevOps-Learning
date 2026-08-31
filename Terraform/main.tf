terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.61"
    }
  }

  required_version = ">= 1.2.0"
}
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "Your_AMI_Code"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}
