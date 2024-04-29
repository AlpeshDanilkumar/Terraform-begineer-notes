resource "aws_security_group" "web" {
  name        = "web_security_group"
  description = "Security group for web servers"

  // Inbound rule for security group
  dynamic "ingress" {
    for_each = var.web-sg-port
    content {
      from_port   = local.app_port
      to_port     = local.app_port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"] // Allows traffic from anywhere (change as needed)

    }

  }
}

locals {
  app_port = 8444
}
