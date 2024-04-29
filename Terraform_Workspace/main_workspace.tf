resource "aws_instance" "ec2_instance" {
  ami           = "ami-0c618421e207909d0"
  instance_type = lookup(var.instance_type,terraform.workspace)
}

variable "instance_type" {
  type = map(string)

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prd     = "t2.large"
  }

}