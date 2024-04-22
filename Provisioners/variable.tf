variable "web_sg_ports" {
  type        = list(number)
  description = "List of ports that should be allowed in a security group"
  default     = [22, 80]
}
