output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "public_subnet_cidr_block" {
  value = aws_subnet.public_subnet.cidr_block
}

#output "public_subnet_availability_zone" {
 # value = aws_subnet.public_subnet.availability_zone
#}

output "private_subnets_id" {
  value = aws_subnet.private_subnets[*].id
}

