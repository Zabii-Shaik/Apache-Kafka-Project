resource "aws_instance" "bastion_host" {
  ami = var.bastion_ami
  instance_type = var.bastion_instance_type
  subnet_id = var.bastion_subnet_id
  key_name = var.bastion_key_name
  vpc_security_group_ids = [var.bastion_sg_id]

  tags = {
    Name = var.bastion_host_name
  }
}

resource "aws_instance" "zkeeper_servers" {
  count = 3
  ami = var.zkeeper_ami
  instance_type = var.zkeeper_instance_type
  #subnet_id = aws_subnet.private_subnets[count.index].id
  subnet_id = var.zkeeper_subnets_id[count.index]
  key_name = var.zkeeper_key_name
  vpc_security_group_ids = [var.zkeeper_sg[count.index % 3]]

  tags = {
    Name = "${var.zkeeper_servers}-${count.index + 1}"
  }
}

resource "aws_instance" "kafka_servers" {
  count = 3
  ami = var.kafka_ami
  instance_type = var.kafka_instance_type
  #subnet_id = aws_subnet.private_subnets[count.index + 3].id
  subnet_id = var.kafka_subnets_id[count.index + 3]
  key_name = var.kafka_key_name
  vpc_security_group_ids = [var.kafka_sg[count.index % 3]]
    #var.zkeeper_sg[(count.index + 1) % 3]

  tags = {
    Name = "${var.kafka_servers}-${count.index + 1}"
  }
}


#resource "aws_network_interface_sg_attachment" "sg_attachment" {
  #count = 3
  #security_group_id = var.aws_security_group_id[count.index]
  #network_interface_id = 
#}
