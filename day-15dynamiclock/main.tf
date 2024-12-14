resource "aws_security_group" "security" {
    name = "aws_security"
    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
          from_port   = ingress.value.from_port
          to_port     = ingress.value.to_port
          protocol    = ingress.value.protocol
          cidr_blocks = ingress.value.cidr_blocks
        }
      
    }
    dynamic "egress" {
        for_each = var.egress_rules
        content {
          cidr_blocks = egress.value.cidr_blocks
          protocol = egress.value.protocol
          from_port = egress.value.from_port
          to_port = egress.value.to_port
        }
      
    }
  
}