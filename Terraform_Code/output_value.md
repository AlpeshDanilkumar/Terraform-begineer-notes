provider "aws" {
    region = "eu-west-2"
  
}
resource "aws_eip" "lb" {
  domain   = "vpc"
}
output "public_ip_address" {
  value = aws_eip.lb.public_ip
}