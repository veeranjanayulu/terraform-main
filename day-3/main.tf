provider "aws" {
    region = "ca-central-1"
  
}

resource "aws_s3_bucket" "name" {
    bucket = "cskkingsdfghhjjhrerree"
  
}

resource "aws_dynamodb_table" "dynamolockingsystem" {
    name = "dynamo"
    hash_key = "LockID"
    read_capacity = "20"
    write_capacity = "20"
    attribute {
      name = "LockID"
      type = "S"
    }
  
}
