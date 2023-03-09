/* Module Variables */
vpc_name   = "vpc_01"
cidr_block = "10.0.0.0/19"
tenancy    = "default"

public_subnet_availability_zone = "ap-south-2a"
public_subnet_cidr_block        = "10.0.0.0/24"

private_subnets_availability_zones = ["ap-south-2a", "ap-south-2b", "ap-south-2c"]
private_subnets_cidr_block         = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

inbound_ssh_rule_number = "100"
inbound_ssh_egress      = "false"
inbound_ssh_protocol    = "tcp"
inbound_ssh_rule_action = "allow"
inbound_ssh_cidr_block  = "10.0.0.0/24"
inbound_ssh_from_port   = "22"
inbound_ssh_to_port     = "22"

outbound_ssh_rule_number = "100"
outbound_ssh_egress      = "true"
outbound_ssh_protocol    = "tcp"
outbound_ssh_rule_action = "allow"
outbound_ssh_cidr_block  = "10.0.0.0/24"
outbound_ssh_from_port   = "22"
outbound_ssh_to_port     = "22"

inbound_zkeeper_rule_number = ["200", "300", "400"]
inbound_zkeeper_egress      = "false"
inbound_zkeeper_protocol    = "tcp"
inbound_zkeeper_rule_action = "allow"
inbound_zkeeper_cidr_block  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
inbound_zkeeper_from_port   = ["9092", "9093", "9094"]
inbound_zkeeper_to_port     = ["9092", "9093", "9094"]

outbound_zkeeper_rule_number = ["200", "300", "400"]
outbound_zkeeper_egress      = "true"
outbound_zkeeper_protocol    = "tcp"
outbound_zkeeper_rule_action = "allow"
outbound_zkeeper_cidr_block  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
outbound_zkeeper_from_port   = ["9092", "9093", "9094"]
outbound_zkeeper_to_port     = ["9092", "9093", "9094"]

inbound_kafka_rule_number = ["500", "600", "700"]
inbound_kafka_egress      = "false"
inbound_kafka_protocol    = "tcp"
inbound_kafka_rule_action = "allow"
inbound_kafka_cidr_block  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
inbound_kafka_from_port   = ["2181", "2182", "2183"]
inbound_kafka_to_port     = ["2181", "2182", "2183"]

outbound_kafka_rule_number = ["500", "600", "700"]
outbound_kafka_egress      = "true"
outbound_kafka_protocol    = "tcp"
outbound_kafka_rule_action = "allow"
outbound_kafka_cidr_block  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
outbound_kafka_from_port   = ["2181", "2182", "2183"]
outbound_kafka_to_port     = ["2181", "2182", "2183"]

bastion_ami           = "ami-0d8d9a2de1bcdb066"
bastion_instance_type = "t3.large"
bastion_key_name      = "aws_key"
bastion_host_name     = "bastion_server"

zkeeper_instance_type = "t3.large"
zkeeper_key_name      = "aws_key"
zkeeper_servers       = "zookeeper_server"

kafka_instance_type = "t3.large"
kafka_key_name      = "aws_key"
kafka_servers       = "kafka_server"

bastion_sg_name            = "bastion_sg"
bastion_ingress_protocol   = "-1"
bastion_ingress_from_port  = "0"
bastion_ingress_to_port    = "0"
bastion_ingress_cidr_block = ["0.0.0.0/0"]

bastion_egress_from_port  = "0"
bastion_egress_to_port    = "0"
bastion_egress_protocol   = "-1"
bastion_egress_cidr_block = ["0.0.0.0/0"]

bastion_ssh_ingress_from_port  = "22"
bastion_ssh_ingress_to_port    = "22"
bastion_ssh_ingress_protocol   = "tcp"
bastion_ssh_ingress_cidr_block = "10.0.0.0/24"

zkeeper_sg_name             = "zkeeper_sg"
zkeeper_ingress_protocol    = "tcp"
zkeeper_ingress_from_ports  = ["9092", "9093", "9094"]
zkeeper_ingress_to_ports    = ["9092", "9093", "9094"]
zkeeper_ingress_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

zkeeper_egress_from_port  = "0"
zkeeper_egress_to_port    = "0"
zkeeper_egress_protocol   = "-1"
zkeeper_egress_cidr_block = ["0.0.0.0/0"]

zkeeper_ssh_ingress_from_port  = "22"
zkeeper_ssh_ingress_to_port    = "22"
zkeeper_ssh_ingress_protocol   = "tcp"
zkeeper_ssh_ingress_cidr_block = "10.0.0.0/24"

kafka_sg_name             = "kafka_sg"
kafka_ingress_protocol    = "tcp"
kafka_ingress_from_ports  = ["2181", "2182", "2183"]
kafka_ingress_to_ports    = ["2181", "2182", "2183"]
kafka_ingress_cidr_blocks = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

kafka_egress_from_port  = "0"
kafka_egress_to_port    = "0"
kafka_egress_protocol   = "-1"
kafka_egress_cidr_block = ["0.0.0.0/0"]

kafka_ssh_ingress_from_port  = "22"
kafka_ssh_ingress_to_port    = "22"
kafka_ssh_ingress_protocol   = "tcp"
kafka_ssh_ingress_cidr_block = "10.0.0.0/24"


