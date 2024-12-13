provider "aws" {
    region = local.region
  
}
locals {
  region="ca-central-1"
  ami="ami-038aeeeeed95c7942"
  instance_type="t2.micro"
  key_name="key"
  bucket="darlingsss"
  count=1
  

}

resource "aws_instance" "server" {
    ami = local.ami
    instance_type = local.instance_type
    key_name = local.key_name
    depends_on = [ aws_s3_bucket.s3 ]
    count = local.count

  lifecycle {
    ignore_changes = [tags,] 
  }
}
resource "aws_s3_bucket" "s3" {
    bucket = local.bucket
  
}

