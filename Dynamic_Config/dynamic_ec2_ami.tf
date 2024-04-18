# This block of code defines a data source named "aws_ami" with the identifier "amiimage".
# The data source retrieves information about Amazon Machine Images (AMIs) matching certain criteria.
data "aws_ami" "amiimage" {
    most_recent = true # This parameter specifies that we want to retrieve the most recent AMI that matches our criteria.
    owners = ["amazon"] # This parameter specifies the owners of the AMIs we want to search for. In this case, we are searching for AMIs owned by Amazon.

# Within the data source block, we define a filter to narrow down the search for AMIs.
# This filter is based on the name of the AMI.
filter {
    name = "name"  # This parameter specifies the attribute of the AMI to filter by, which in this case is the name.
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-*"]  # This parameter specifies the values to match against the name attribute. We're using a wildcard (*) to match any AMI with a name that starts with "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-arm64-server-".
  }
}

resource "aws_instance" "server1" {
    ami = data.aws_ami.amiimage.image_id  #It fetches the AMI ID from the data source "aws_ami" we defined earlier. This line references the image_id attribute of the data source to get the ID of the AMI.
  
    instance_type = "t2.micro"
  
}
