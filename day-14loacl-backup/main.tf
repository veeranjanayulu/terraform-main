# Define provider for AWS (Make sure to have AWS credentials set)
provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}

# Create an EC2 instance in AWS
resource "aws_instance" "example" {
  ami           = "ami-0614680123427b75e"  # Example AMI ID (replace with a valid one)
  instance_type = "t2.micro"
  key_name      = "awskey"           # Replace with your SSH key name
  tags = {
    Name = "TerraformExample"
  }
  

   provisioner "local-exec" {
  command = <<EOT
    echo "Creating backup directory..."
    mkdir ./backups
    echo "Copying terraform.tfstate..."
    copy terraform.tfstate ./backups/terraform.tfstate.backup-${timestamp()}
    echo "Backup complete."
  EOT
}

}




