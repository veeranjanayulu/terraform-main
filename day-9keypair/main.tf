resource "aws_key_pair" "name" {
    key_name = "key"
    public_key = file("~/.ssh/id_rsa.pub") #here you need to define public key file path

  
}

resource "aws_instance" "dev" {
  ami                    = "ami-038aeeeeed95c7942"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.key.key_name
  tags = {
    Name="kubernets"
  }
}

resource "aws_key_pair" "key" {
    key_name = "aws"
    public_key = file("~/.ssh/id_rsa.pub")
}