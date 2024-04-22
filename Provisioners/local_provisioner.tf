/*
resource "aws_instance" "first_ec2" {
  ami           = "ami-0c618421e207909d0"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> server_ip.txt"

  }

}

*/