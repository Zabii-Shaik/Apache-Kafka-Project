/* Vpc Output */
output "kafka_vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "kafka_vpc_cidr" {
  value = aws_vpc.my_vpc.cidr_block
}


