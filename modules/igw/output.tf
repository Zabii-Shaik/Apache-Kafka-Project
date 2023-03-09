output "aws_internet_gw_id" {
  value = aws_internet_gateway.internet_gateway.id
}

output "aws_internet_gw_vpc_id" {
  value = aws_internet_gateway.internet_gateway.vpc_id
}
