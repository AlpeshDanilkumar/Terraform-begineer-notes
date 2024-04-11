provider "aws" {
  region     = "eu-west-2"
  access_key = "PUT YOUR ACCESS KEY FROM AWS"
  secret_key = "PUT YOUR SECRET KEY FOR AWS"
}

resource "aws_instance" "first_ec2" {
    ami             = "ami-0c618421e207909d0"
    instance_type   = "t2.medium"

    tags = {
      Name = "myfirstec2"
    }
  
}