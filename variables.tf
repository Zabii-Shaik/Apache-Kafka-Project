variable "vpc_name" {
  description = "vpc_name is defined"
}

variable "cidr_block" {
  description = "cidr_block is defined"
}

variable "tenancy" {
  description = "tenancy will be default"
}

variable "public_subnet_name" {
  default     = "public subnet"
  description = "public_subnet_name"
}

variable "private_subnets_name" {
  default     = "private subnet"
  description = "private_subnet_name"
}

variable "public_subnet_availability_zone" {
  default     = "ap-south-2a"
  description = "public_availability_zone='ap-south-2a'"
}

variable "private_subnets_availability_zones" {
  type        = set(string)
  description = "private_subnets_availability_zones='ap-south-2a, ap-south-2b, ap-south-2c'"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "public_subnet_cidr_block"
}

variable "private_subnets_cidr_block" {
  type        = list(string)
  description = "private_subnets_cidr_block='192.168.16.0/21, 192.168.24.0/21, 192.168.32.0/21, 192.168.40.0/21, 192.168.48.0/21, 192.168.56.0/21'"
}

variable "igw" {
  description = "igw name is defined"
  default     = "internet_gateway"
}

variable "aws_internet_gateway" {
  default = "aws_internet_gateway.internet_gateway"
}

variable "nat_gateway" {
  default     = "nat_gateway"
  description = "nat_gateway name is defined"
}

variable "public_route_table" {
  default     = "public_route_table"
  description = "public_route_table name is defined"
}

variable "private_route_table" {
  default     = "private_route_table"
  description = "private_route_table name is defined"
}

variable "network_acl" {
  default     = "network_acl"
  description = "network_acl name is defined"
}

variable "inbound_ssh_rule_number" {
  description = "rule_no-2 is defined"
}

variable "inbound_ssh_egress" {
  description = "egress-2"
}

variable "inbound_ssh_protocol" {
  description = "protocol-2"
}

variable "inbound_ssh_rule_action" {
  description = "rule_action-2"
}

variable "inbound_ssh_cidr_block" {
  description = "inbound_ssh_cidr_block"
}

variable "inbound_ssh_from_port" {
  description = "from_port-2"
}

variable "inbound_ssh_to_port" {
  description = "to_port-2"
}

variable "inbound_zkeeper_rule_number" {
  type        = list(string)
  description = "rule_no-1 is defined"
}

variable "inbound_zkeeper_egress" {
  description = "egress-1"
}

variable "inbound_zkeeper_protocol" {
  description = "protocol-1"
}

variable "inbound_zkeeper_rule_action" {
  description = "rule_action-1"
}

variable "inbound_zkeeper_cidr_block" {
  description = "inbound_zkeeper_cidr_block"
}

variable "inbound_zkeeper_from_port" {
  type        = list(string)
  description = "from_port-1"
}

variable "inbound_zkeeper_to_port" {
  type        = list(string)
  description = "to_port-1"
}

variable "inbound_kafka_rule_number" {
  type        = list(string)
  description = "rule_no-1 is defined"
}

variable "inbound_kafka_egress" {
  description = "egress-1"
}

variable "inbound_kafka_protocol" {
  description = "protocol-1"
}

variable "inbound_kafka_rule_action" {
  description = "rule_action-1"
}

variable "inbound_kafka_cidr_block" {
  description = "inbound_kafka_cidr_block"
}

variable "inbound_kafka_from_port" {
  type        = list(string)
  description = "from_port-1"
}

variable "inbound_kafka_to_port" {
  type        = list(string)
  description = "to_port-1"
}

variable "outbound_ssh_rule_number" {
  description = "rule_no-2 is defined"
}

variable "outbound_ssh_egress" {
  description = "egress-2"
}

variable "outbound_ssh_protocol" {
  description = "protocol-2"
}

variable "outbound_ssh_rule_action" {
  description = "rule_action-2"
}

variable "outbound_ssh_cidr_block" {
  description = "outbound_ssh_cidr_block"
}

variable "outbound_ssh_from_port" {
  description = "from_port-2"
}

variable "outbound_ssh_to_port" {
  description = "to_port-2"
}

variable "outbound_zkeeper_rule_number" {
  type        = list(string)
  description = "rule_no-2 is defined"
}

variable "outbound_zkeeper_egress" {
  description = "egress-2"
}

variable "outbound_zkeeper_protocol" {
  description = "protocol-2"
}

variable "outbound_zkeeper_rule_action" {
  description = "rule_action-2"
}

variable "outbound_zkeeper_cidr_block" {
  description = "outbound_zkeeper_cidr_block"
}

variable "outbound_zkeeper_from_port" {
  type        = list(string)
  description = "from_port-2"
}

variable "outbound_zkeeper_to_port" {
  type        = list(string)
  description = "to_port-2"
}

variable "outbound_kafka_rule_number" {
  type        = list(string)
  description = "rule_no-2 is defined"
}

variable "outbound_kafka_egress" {
  description = "egress-2"
}

variable "outbound_kafka_protocol" {
  description = "protocol-2"
}

variable "outbound_kafka_rule_action" {
  description = "rule_action-2"
}

variable "outbound_kafka_cidr_block" {
  description = "outbound_kafka_cidr_block"
}

variable "outbound_kafka_from_port" {
  type        = list(string)
  description = "from_port-2"
}

variable "outbound_kafka_to_port" {
  type        = list(string)
  description = "to_port-2"
}

variable "bastion_ami" {
  description = "bastion_ami"
}

variable "bastion_host_name" {
  description = "bastion_host_name"
}

variable "bastion_key_name" {
  description = "key_name"
}

variable "bastion_instance_type" {
  description = "bastion_instance_type"
}

variable "zkeeper_instance_type" {
  description = "instance_type is defined"
}

variable "zkeeper_key_name" {
  description = "key_name is defined"
}

variable "zkeeper_servers" {
  description = "kafka_servers is defined"
}

variable "zkeeper_ami" {
  description = "zkeeper_ami is defined"
}

variable "kafka_instance_type" {
  description = "instance_type is defined"
}

variable "kafka_key_name" {
  description = "key_name is defined"
}

variable "kafka_servers" {
  description = "kafka_servers is defined"
}

variable "kafka_ami" {
  description = "kafka_ami is defined"
}

variable "bastion_sg_name" {
  description = "bastion_sg_name"
}

variable "bastion_ingress_from_port" {

  description = "bastion_ingress_from_port"
}

variable "bastion_ingress_to_port" {

  description = "bastion_ingress_to_port"
}

variable "bastion_ingress_protocol" {

  description = "bastion_ingress_protocol"
}

variable "bastion_ingress_cidr_block" {

  description = "bastion_ingress_cidr_block"
}

variable "bastion_egress_from_port" {
  description = "bastion_egress_from_port"
}

variable "bastion_egress_to_port" {
  description = "bastion_egress_to_port"
}

variable "bastion_egress_protocol" {
  description = "bastion_egress_protocol"
}

variable "bastion_egress_cidr_block" {
  description = "bastion_egress_cidr_block"
}

variable "bastion_ssh_ingress_from_port" {
  description = "bastion_ingress_from_port"
}

variable "bastion_ssh_ingress_to_port" {
  description = "bastion_ingress_to_port"
}

variable "bastion_ssh_ingress_protocol" {
  description = "bastion_ingress_protocol"
}

variable "bastion_ssh_ingress_cidr_block" {
  description = "bastion_ingress_cidr_block"
}

variable "zkeeper_sg_name" {
  #type = list(string)
  description = "zkeeper_sg_name"
}

variable "zkeeper_ingress_from_ports" {
  type        = list(number)
  description = "zkeeper_ingress_from_port"
}

variable "zkeeper_ingress_to_ports" {
  type        = list(number)
  description = "zkeeper_ingress_to_port"
}

variable "zkeeper_ingress_protocol" {
  description = "zkeeper_ingress_protocol"
}

variable "zkeeper_ingress_cidr_blocks" {
  type        = list(string)
  description = "zkeeper_ingress_cidr_block"
}

variable "zkeeper_egress_from_port" {
  description = "bastion_egress_from_port"
}

variable "zkeeper_egress_to_port" {
  description = "bastion_egress_to_port"
}

variable "zkeeper_egress_protocol" {
  description = "bastion_egress_protocol"
}

variable "zkeeper_egress_cidr_block" {
  description = "bastion_egress_cidr_block"
}

variable "zkeeper_ssh_ingress_from_port" {
  description = "zkeeper_ingress_from_port"
}

variable "zkeeper_ssh_ingress_to_port" {
  description = "zkeeper_ingress_to_port"
}

variable "zkeeper_ssh_ingress_protocol" {
  description = "zkeeper_ssh_ingress_protocol"
}

variable "zkeeper_ssh_ingress_cidr_block" {
  description = "zkeeper_ssh_ingress_cidr_block"
}

variable "kafka_sg_name" {
  #type = list(string)
  description = "kafka_sg_name"
}

variable "kafka_ingress_from_ports" {
  type        = list(number)
  description = "kafka_ingress_from_port"
}

variable "kafka_ingress_to_ports" {
  type        = list(number)
  description = "kafka_ingress_to_port"
}

variable "kafka_ingress_protocol" {
  description = "kafka_ingress_protocol"
}

variable "kafka_ingress_cidr_blocks" {
  type        = list(string)
  description = "kafka_ingress_cidr_block"
}

variable "kafka_egress_from_port" {
  description = "bastion_egress_from_port"
}

variable "kafka_egress_to_port" {
  description = "bastion_egress_to_port"
}

variable "kafka_egress_protocol" {
  description = "bastion_egress_protocol"
}

variable "kafka_egress_cidr_block" {
  description = "bastion_egress_cidr_block"
}

variable "kafka_ssh_ingress_from_port" {
  description = "kafka_ssh_ingress_from_port"
}

variable "kafka_ssh_ingress_to_port" {
  description = "kafka_ssh_ingress_to_port"
}

variable "kafka_ssh_ingress_protocol" {
  description = "kafka_ssh_ingress_protocol"
}

variable "kafka_ssh_ingress_cidr_block" {
  description = "kafka_ssh_ingress_cidr_block"
}
