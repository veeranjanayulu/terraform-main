provider "aws" {
    region = "ap-south-1"
  
}

locals {
  region = "us-east-1"
  ami="ami-0614680123427b75e"
  instance_type = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = local.ami # Amazon Linux 2 AMI
  instance_type = local.instance_type

  tags = {
    Name        = "ExampleInstance"
    
  }
}