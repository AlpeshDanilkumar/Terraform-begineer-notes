resource "aws_instance" "myec2" {
    ami = "ami-0c618421e207909d0"
    instance_type = "t2.micro"
    count = 2
  
}

## we can use count index for different names, see below example:

resource "aws_iam_user" "ops" {
    name = "user.${count.index}"
    count = 2
}