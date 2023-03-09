variable "kafka_vpc_id" {
  description = "vpc_id is defined"
}

variable "network_acl" {
  description = "network_acl is defined"
}

variable "private_subnets_id" {
  type = list(string)
  description = "private_subnets_id is defined"
}

variable "network_acl_association" {
  description = "network_acl_association is defined"
}

variable "network_acl_id" {
  description = "network_acl is defined"
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
  type = list(string)
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
  type = list(string)
  description = "from_port-1"
}

variable "inbound_zkeeper_to_port" {
  type = list(string)
  description = "to_port-1"
}

variable "inbound_kafka_rule_number" {
  type = list(string)
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
  type = list(string)
  description = "from_port-1"
}

variable "inbound_kafka_to_port" {
  type = list(string)
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
  type = list(string)
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
  type = list(string)
  description = "from_port-2"
}

variable "outbound_zkeeper_to_port" {
  type = list(string)
  description = "to_port-2"
}

variable "outbound_kafka_rule_number" {
  type = list(string)
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
  type = list(string)
  description = "from_port-2"
}

variable "outbound_kafka_to_port" {
  type = list(string)
  description = "to_port-2"
}
