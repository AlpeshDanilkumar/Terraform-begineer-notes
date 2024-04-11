provider "aws" {
    region = "eu-west-2"
  
}
resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_security_group" "allow_tls" {
    name = "cross-attributes-firewalls"
  
}

resource "aws_vpc_security_group_ingress_rule" "allows_tls_ipv4" {
    security_group_id = aws_security_group.allow_tls.id
    cidr_ipv4 = "${aws_eip.lb.public_ip}/32"
    from_port = 80
    ip_protocol = "tcp"
    to_port = 80
  
}

# This Terraform configuration script sets up the following resources:

# AWS provider block specifying the region as "eu-west-2".
# AWS Elastic IP (EIP) resource named "lb" with the domain set to "vpc".
# AWS security group resource named "allow_tls" without any inbound rules specified explicitly.
# Ingress rule for the security group "allow_tls", allowing TCP traffic on port 80 (HTTP) from a specific IPv4 CIDR block. The CIDR block specified allows traffic only from the public IP address of the Elastic IP created earlier.
# This setup essentially allows HTTP traffic only from the Elastic IP address specified in the configuration.