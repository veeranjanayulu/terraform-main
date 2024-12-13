resource "aws_instance" "server" {
    ami="ami-038aeeeeed95c7942"
    key_name = "key"
    instance_type = "t2.micro"
    user_data = file("test.sh") 
}