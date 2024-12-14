provider "aws" {
    region = "ap-south-1"

  
}
resource "aws_instance" "server" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "awskey"
  
}

resource "aws_s3_bucket" "s3" {
    bucket = "ringriytaz"
  
}

