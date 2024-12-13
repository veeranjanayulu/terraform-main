provider "aws" {
    region = "ca-central-1"
  
}

resource "aws_instance" "server" {
    ami = "ami-038aeeeeed95c7942"
    instance_type = "t2.micro"
    key_name = "key"
    count = length(var.aws_tags) 
    tags = {
      Name=var.aws_tags[count.index]
    }
}