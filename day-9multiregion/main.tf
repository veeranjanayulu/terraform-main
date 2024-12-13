provider "aws" {
    region = "ca-central-1"
    alias = "cannada"

  
}
provider "aws" {
    region = "ap-south-1"
    alias ="mumbai"
  
}
resource "aws_instance" "name" {
  ami="ami-0614680123427b75e"
  key_name="awskey"
  instance_type="t2.micro"
  provider= aws.mumbai

}