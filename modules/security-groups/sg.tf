resource "aws_security_group" "bastion_SG" {
  vpc_id = var.kafka_vpc_id

  ingress {
    from_port = var.bastion_ingress_from_port
    to_port = var.bastion_ingress_to_port
    protocol = var.bastion_ingress_protocol
    cidr_blocks = var.bastion_ingress_cidr_block
  }
  egress {
    from_port = var.bastion_egress_from_port
    to_port = var.bastion_egress_to_port
    protocol = var.bastion_egress_protocol
    cidr_blocks = var.bastion_egress_cidr_block
  }

  tags = {
    Name = var.bastion_sg_name
  }
}

resource "aws_security_group" "zkeeper_SG" {
  vpc_id = var.kafka_vpc_id
  count = 3

  ingress {
      from_port = var.zkeeper_ingress_from_port[count.index]
      to_port = var.zkeeper_ingress_to_port[count.index]
      protocol = var.zkeeper_ingress_protocol
      cidr_blocks = [var.zkeeper_ingress_cidr_blocks[count.index]]
    }
  egress {
    from_port = var.zkeeper_egress_from_port
    to_port = var.zkeeper_egress_to_port
    protocol = var.zkeeper_egress_protocol
    cidr_blocks = var.zkeeper_egress_cidr_block
  }

  tags = {
    Name = "${var.zkeeper_sg_name}-${count.index + 1}"
  }
}

resource "aws_security_group" "kafka_SG" {
  vpc_id = var.kafka_vpc_id
  count = 3

  ingress {
      from_port = var.kafka_ingress_from_port[count.index]
      to_port = var.kafka_ingress_to_port[count.index]
      protocol = var.kafka_ingress_protocol
      cidr_blocks = [var.kafka_ingress_cidr_blocks[count.index]]
    }
  egress {
    from_port = var.kafka_egress_from_port
    to_port = var.kafka_egress_to_port
    protocol = var.kafka_egress_protocol
    cidr_blocks = var.kafka_egress_cidr_block
  }

  tags = {
    Name = "${var.kafka_sg_name}-${count.index + 1}"
  }
}

resource "aws_security_group_rule" "ssh_rule" {
  security_group_id = aws_security_group.bastion_SG.id
  type = "ingress"
  from_port = var.bastion_ssh_ingress_from_port
  to_port = var.bastion_ssh_ingress_to_port
  protocol = var.bastion_ssh_ingress_protocol
  cidr_blocks = [var.bastion_ssh_ingress_cidr_block]
}


resource "aws_security_group_rule" "zkeeper_ssh_rule" {
  count = 3
  security_group_id = aws_security_group.zkeeper_SG[count.index].id
  type = "ingress"
  from_port = var.zkeeper_ssh_ingress_from_port
  to_port = var.zkeeper_ssh_ingress_to_port
  protocol = var.zkeeper_ssh_ingress_protocol
  cidr_blocks = [var.zkeeper_ssh_ingress_cidr_block]
}

resource "aws_security_group_rule" "kafka_ssh_rule" {
  count = 3
  security_group_id = aws_security_group.kafka_SG[count.index].id
  type = "ingress"
  from_port = var.kafka_ssh_ingress_from_port
  to_port = var.kafka_ssh_ingress_to_port
  protocol = var.kafka_ssh_ingress_protocol
  cidr_blocks = [var.kafka_ssh_ingress_cidr_block]
}
