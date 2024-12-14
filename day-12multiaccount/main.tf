provider "aws" {
    profile = "default"
    alias = "defaultaccount"
}

provider "aws" {
    profile = "rohan"
    alias = "rohan"
  
}

resource "aws_s3_bucket" "s3" {
    bucket = "asdfghjkl"
    provider = aws.defaultaccount
}
resource "aws_s3_bucket" "name" {
    bucket = "qwwertyuuiooop"
    provider=aws.rohan 
}