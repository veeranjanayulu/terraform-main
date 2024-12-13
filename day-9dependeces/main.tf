provider "aws" {
    region = "ca-central-1"
  
}

resource "aws_instance" "server" {
    ami = "ami-038aeeeeed95c7942"
    key_name = "key"
    instance_type = "t2.micro"
  
}

resource "aws_s3_bucket" "s3" {
    bucket = "jaddu-ka-raj"
    depends_on = [ aws_instance.server ]
  
}  
