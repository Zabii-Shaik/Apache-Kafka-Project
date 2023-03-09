resource "aws_network_acl" "network_acl" {
  vpc_id     = var.kafka_vpc_id
  
  tags = {
    Name = var.network_acl
  }
}

resource "aws_network_acl_rule" "bastion_ssh_inbound" {
  network_acl_id = var.network_acl_id
  rule_number = var.inbound_ssh_rule_number
  egress  = var.inbound_ssh_egress
  protocol = var.inbound_ssh_protocol
  rule_action = var.inbound_ssh_rule_action
  cidr_block = var.inbound_ssh_cidr_block
  from_port  = var.inbound_ssh_from_port
  to_port    = var.inbound_ssh_to_port
}

resource "aws_network_acl_rule" "bastion_ssh_outbound" {
  network_acl_id = aws_network_acl.network_acl.id
  count = 6
  rule_number = var.outbound_ssh_rule_number
  egress  = var.outbound_ssh_egress
  protocol = var.outbound_ssh_protocol
  rule_action = var.outbound_ssh_rule_action
  cidr_block = var.outbound_ssh_cidr_block[count.index]
  from_port  = var.outbound_ssh_from_port
  to_port    = var.outbound_ssh_to_port
}

resource "aws_network_acl_association" "network_acl_association" {
  count           = length(var.private_subnets_id)
  subnet_id       = var.private_subnets_id[count.index]
  network_acl_id  = var.network_acl_association
}


