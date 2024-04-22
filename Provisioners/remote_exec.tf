resource "aws_security_group" "web" {
  name        = "web_security_group"
  description = "Security group for web servers"

  // Inbound rule for security group
  dynamic "ingress" {
    for_each = var.web_sg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"] // Allows traffic from anywhere (change as needed)
    }
  }
}

resource "aws_instance" "first_ec2" {
  ami             = "ami-0c618421e207909d0"
  instance_type   = "t2.micro"
  key_name        = "remote-exec-key"
  security_groups = [aws_security_group.web.name] // Assigning the security group created above

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./remote-exec-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}

