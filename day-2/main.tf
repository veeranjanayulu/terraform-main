resource "aws_vpc" "private" {
    cidr_block = var.cidr_block_vpc
    tags = {
      Name="vpc_network"
    }
  
}
resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.private.id
    cidr_block = var.subnet_cidr_pulic
    availability_zone = "ca-central-1a"
    tags = {
      Name="public"
    }
    
  
}
resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.private.id
  
}
resource "aws_route_table" "name" {
    vpc_id = aws_vpc.private.id
    tags = {
      Name="route"
    }
    route {
        gateway_id = aws_internet_gateway.ig.id
        cidr_block = var.route_cidr
    }
  
}
resource "aws_route_table_association" "name" {
    route_table_id = aws_route_table.name.id
    subnet_id = aws_subnet.subnet1.id
  
}
resource "aws_security_group" "secure" {
    name = var.security_name
    description =var.security_description
    vpc_id = aws_vpc.private.id 
    tags ={
        Name ="my_security"
    }  
    ingress {
        description = var.ingress_descr
        from_port = var.ingress_from_port
        to_port = var.ingres_to_port
        protocol = var.ingress_protocol
        cidr_blocks = var.ingress_cidr
    }
    egress {
        description      = "TLS from VPC"
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}