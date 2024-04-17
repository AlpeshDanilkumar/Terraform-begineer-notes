provider "aws" {
    region = "eu-west-2"
  
}
resource "aws_instance" "server1" {
    ami = var.ami_id
    instance_type   = var.instance_type
    }
