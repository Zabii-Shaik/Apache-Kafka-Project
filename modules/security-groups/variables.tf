variable "kafka_vpc_id" {
  description = "kafka_vpc_id"
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

variable "zkeeper_ingress_from_port" {
  type = list(number)
  description = "zkeeper_ingress_from_port"
}

variable "zkeeper_ingress_to_port" {
  type = list(number)
  description = "zkeeper_ingress_to_port"
}

variable "zkeeper_ingress_protocol" {
  description = "zkeeper_ingress_protocol"
}

variable "zkeeper_ingress_cidr_blocks" {
  type = list(string)
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
  description = "zkeeper_egress_cidr_block"
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

variable "kafka_ingress_from_port" {
  type = list(number)
  description = "kafka_ingress_from_port"
}

variable "kafka_ingress_to_port" {
  type = list(number)
  description = "kafka_ingress_to_port"
}

variable "kafka_ingress_protocol" {
  description = "kafka_ingress_protocol"
}

variable "kafka_ingress_cidr_blocks" {
  type = list(string)
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
