variable "kafka_vpc_id" {
  description = "vpc_id is defined"
}

variable "public_subnet_cidr_block" {
  description = "the public cidr value"
}

variable "public_subnet_name" {
  description = "the public subnet name"
}

variable "public_subnet_availability_zone" {
  description = "public_subnet_availability_zone"
}

variable "private_subnets_name" {
  description = "the private subnet name"
}

variable "private_subnets_cidr_block" {
  type        = list(string)
  description = "the private cidr value"
}


