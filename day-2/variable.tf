variable "cidr_block_vpc" {
    description = "cidr range for vpc"
    type = string
    default = "10.0.0.0/16"
  
}
variable "subnet_az_public" {
    description = "az"
    type = string
    default = "ca-central-1a"

  
}
variable "subnet_cidr_pulic" {
    description = "cdir range"
    type = string
    default = "10.0.0.0/24"
  
}


variable "subnet_az_private" {
    description = "az"
    type = string
    default = "ca-central-1b"
  
}
variable "route_cidr" {
    description = "route cidr range"
    type = string
    default = "0.0.0.0/0"
  
}
variable "security_name" {
    description = "name of security"
    type = string
    default = "my_security"
  
}
variable "security_description" {
    description = "description"
    type = string
    default = "allow"
  
}
variable "ingress_descr" {
    description = "allow all"
    type = string
    default = "allow all"
  
}
variable "ingress_from_port" {
    description = "port"
    type = string
    default = "22"
  
}
variable "ingres_to_port" {
    description = "port of to"
    type = string
    default = "22"

  
}
variable "ingress_protocol" {
    description = "protocol"
    type = string
    default = "tcp"
  
}
variable "ingress_cidr" {
    description = "cdir"
    default =["0.0.0.0/0"]
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    default = "key"
  
}
variable "ami" {
    type = string
    default = "ami-038aeeeeed95c7942"
  
}