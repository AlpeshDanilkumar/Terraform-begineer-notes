terraform {
  backend "s3" {
    bucket = "aldan-terraform-backend"
    key    = "network/terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "terraform-state-locking"
  }
}
