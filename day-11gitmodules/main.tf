module "aws_instance" {
    source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"
    ami = "ami-038aeeeeed95c7942"
    instance_type = "t2.micro"
    key_name ="key"
}