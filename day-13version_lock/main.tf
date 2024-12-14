terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "4.20.0"  # Optional: specify the version you want to use
      version=">=4.20.0,<5.0.0"
    }
  }
}

provider "aws" {
  region = "ca-central-1"
}


resource "aws_s3_bucket" "name" {
    bucket = "sdfghjkygb"
  
}