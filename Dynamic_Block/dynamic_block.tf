variable "web-sg-port" {
  type        = list(number) // Allows list of numbers in our case its port numbers 
  description = "List of ports that should be allowed in a security group"
  default     = [443, 80]

}

resource "aws_security_group" "web" {
  name        = "web_security_group"
  description = "Security group for web servers"

  // Inbound rule for security group
  dynamic "ingress" {
    for_each = var.web-sg-port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"] // Allows traffic from anywhere (change as needed)

    }

  }
}