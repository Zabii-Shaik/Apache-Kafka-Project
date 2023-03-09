output "bastion_sg" {
  value = aws_security_group.bastion_SG.id
}

output "zkeeper_sg" {
  value = aws_security_group.zkeeper_SG[*].id
}

output "kafka_sg" {
  value = aws_security_group.kafka_SG[*].id
}


