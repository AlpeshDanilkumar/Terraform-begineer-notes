variable "web-sg-port" {
  type        = list(number) // Allows list of numbers in our case its port numbers 
  description = "List of ports that should be allowed in a security group"
  default     = [443, 80, 22]

}
