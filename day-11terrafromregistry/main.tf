provider "aws" {
    region = "ca-central-1"
  
}

module "aws_instance" {
    source = "terraform-aws-modules/ec2-instance/aws"
    ami = "ami-038aeeeeed95c7942"
    instance_type = "t2.micro"
    key_name ="key"   
}