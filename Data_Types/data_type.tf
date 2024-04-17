provider "aws" {
    region = "eu-west-2"
  
}
variable "iam_username" {
    type = number
}

resource "aws_iam_user" "user" {
    name = var.iam_username
  
}