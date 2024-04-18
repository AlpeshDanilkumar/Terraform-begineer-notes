locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "operation"
  }
}

resource "aws_instance" "dev-server" {
    ami = "ami-0c618421e207909d0"
    instance_type = "t2.micro"
    tags = local.common_tags
}