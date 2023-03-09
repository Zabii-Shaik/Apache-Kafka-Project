/* Vpc */
resource "aws_vpc" "my_vpc" {
  cidr_block           = var.cidr_block
  instance_tenancy     = var.tenancy_type
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = var.vpc_name
  }
}


