variable "bastion_ami" {
  description = "bastion_ami is defined"
}

variable "bastion_instance_type" {
  description = "instance_type is defined"
}

variable "bastion_subnet_id" {
  description = "bastion_subnet_id is defined"
}

variable "bastion_sg_id" {
  description = "bastion_sg_id"
}

variable "bastion_key_name" {
  description = "key_name is defined"
}

variable "bastion_host_name" {
  description = "bastion_host_name is defined"
}

variable "kafka_ami" {
  description = "kafka_ami is defined"
}

variable "kafka_instance_type" {
  description = "instance_type is defined"
}

variable "kafka_sg" {
  type = list(string)
  description = "kafka_sg"
}

variable "zkeeper_subnets_id" {
  type = list(string)
  description = "zkeeper_subnets_id"
}

variable "kafka_key_name" {
  description = "key_name is defined"
}

variable "kafka_servers" {
  description = "kafka_servers is defined"
}

variable "zkeeper_ami" {
  description = "zkeeper_ami"
}

variable "zkeeper_instance_type" {
  description = "zkeeper_instance_type"
}

variable "kafka_subnets_id" {
  type = list(string)
  description = "kafka_subnets_id"
}

variable "zkeeper_key_name" {
  description = "zkeeper_key_name"
}

variable "zkeeper_servers" {
  description = "zkeeper_servers"
}

variable "zkeeper_sg" {
  type = list(string)
  description = "zkeeper_sg"
}


