provider "aws" {
    region = "eu-west-2"
  
}

resource "aws_instance" "server1" {
    ami = "ami-0c618421e207909d0"
    instance_type   = var.instance_type
    }