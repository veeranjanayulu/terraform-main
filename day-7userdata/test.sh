#! /bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo sysatemctl enable httpd 
echo "<h1>Welcome to Naresh IT ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html