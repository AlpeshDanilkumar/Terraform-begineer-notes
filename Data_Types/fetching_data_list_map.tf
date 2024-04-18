resource "aws_instance" "myserver" {
    ami = "ami-0c618421e207909d0"
    # instance_type = var.list[0] ## fetching list element
    instance_type = var.map["eu-west-2"]
    
  
}

# ## List 
# variable "list" {
#     type = list
#     default = ["t2.micro","t2.medium","t2.large"]
# }

#### Map ###
variable "map" {
    type = map
    default = {
        eu-west-1 = "t2.micro"
        eu-west-2 = "t2.medium"
    }
}