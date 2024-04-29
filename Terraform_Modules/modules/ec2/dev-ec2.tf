resource "aws_instance" "ec2_instance" {
  ami           = "ami-0c618421e207909d0"
  instance_type = var.instance_type
}