terraform {
  backend "s3" {
    bucket = "kafka-tfstate"
    key = "terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
