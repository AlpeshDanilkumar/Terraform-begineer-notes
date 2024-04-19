/*
resource "aws_security_group" "web" {
  name        = "web_security_group"
  description = "Security group for web servers"

  // Inbound rule for HTTP (port 80)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // Allows traffic from anywhere (change as needed)
  }

  // Inbound rule for HTTPS (port 443)
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // Allows traffic from anywhere (change as needed)
  }

}
*/