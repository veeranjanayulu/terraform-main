variable "aws_region" {
  description = "The region in which to create the infrastructure"
  type        = string
  nullable    = false
  default     = "ca-central-1" #here we need to define either us-west-1 or eu-west-2 if i give other region will get error 
  validation {
    condition = var.aws_region == "ca-central-1" || var.aws_region == "us-east-1"
    error_message = "The variable 'aws_region' must be one of the following regions: ca-central-1, us-east-1"
  }
}

provider "aws" {
  region = "ca-central-1"
  
   
 }

 resource "aws_s3_bucket" "dev" {
    bucket = "rutturajcsk"
    
  
}