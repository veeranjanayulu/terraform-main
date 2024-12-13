provider "aws" {
    region = "ca-central-1"
  
}

data "aws_ami" "selected" {
  most_recent = true
  owners      = ["amazon"] # Only consider AMIs owned by Amazon

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] # Pattern to match the Amazon Linux 2 AMI
  }
}

data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["public"] # insert value here
  }
}
data "aws_key_pair" "selected" {
  key_name = "key" # Replace with the name of your key pair
}



resource "aws_instance" "dev" {
   ami = data.aws_ami.selected.id
   instance_type ="t2.micro"
   key_name = data.aws_key_pair.selected.key_name
   subnet_id = data.aws_subnet.selected.id
 
}