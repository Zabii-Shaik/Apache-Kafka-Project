/* Public Route Table */
resource "aws_route_table" "public_route_table" {
  vpc_id = var.kafka_vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }
  tags = {
    Name = var.public_route_table
  }
}

resource "aws_route_table_association" "public_route_table_association" {
  route_table_id = var.public_route_table_association
  subnet_id      = var.public_subnet_id
}

resource "aws_route_table" "private_route_table" {
  vpc_id = var.kafka_vpc_id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_id
  }
  tags = {
    Name = var.private_route_table
  }
}

resource "aws_route_table_association" "private_route_table_association" {
  count           = length(var.private_subnets_id)
  subnet_id       = var.private_subnets_id[count.index]
  route_table_id  = var.private_route_table_association

}


