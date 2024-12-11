terraform {
  backend "s3" {
    bucket = "cskking"
    region = "ca-central-1"
    key = "trraform/terraform.tfstate"
    dynamodb_table = "dynamotable"
    encrypt = true
    
  }
}