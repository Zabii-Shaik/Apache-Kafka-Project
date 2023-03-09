variable "kafka_vpc_id" {
  description = "vpc_id is defined"
}

variable "public_route_table" {
  description = "public_route_table name is defined"
}

variable "private_route_table" {
  description = "private_route_table name is defined"
}

variable "gateway_id" {
  description = "gateway_id is defined"
}

variable "nat_gateway_id" {
  description = "nat_gateway_id is defined"
}

variable "public_route_table_association" {
  description = "public_route_table_association is defined"
}

variable "public_subnet_id" {
  description = "public_subnet_id is defined"
}

variable "private_route_table_association" {
  description = "public_subnet_id is defined"
}

variable "private_subnets_id" {
  type = list(string)
  description = "private_subnets_id is defined"
}

