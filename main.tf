/* Network Module */
module "kafka_vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  cidr_block   = var.cidr_block
  tenancy_type = var.tenancy
}

module "kafka_subnets" {
  source                          = "./modules/subnets"
  kafka_vpc_id                    = module.kafka_vpc.kafka_vpc_id
  public_subnet_name              = var.public_subnet_name
  public_subnet_availability_zone = var.public_subnet_availability_zone
  public_subnet_cidr_block        = var.public_subnet_cidr_block
  private_subnets_name            = var.private_subnets_name
  private_subnets_cidr_block      = var.private_subnets_cidr_block
}

module "kafka_internet_gateway" {
  source           = "./modules/igw"
  kafka_vpc_id     = module.kafka_vpc.kafka_vpc_id
  internet_gateway = var.igw
}

module "kafka_elastic_ip" {
  source     = "./modules/elastic-ip"
  depends_on = [var.aws_internet_gateway]
}

module "nat_gateway" {
  source           = "./modules/nat"
  nat_gateway      = var.nat_gateway
  elastic_ip_id    = module.kafka_elastic_ip.elastic_ip_allocation_id
  public_subnet_id = module.kafka_subnets.public_subnet_id
  depends_on       = [var.aws_internet_gateway]
}

module "route_table" {
  source                          = "./modules/route_tables"
  kafka_vpc_id                    = module.kafka_vpc.kafka_vpc_id
  public_route_table              = var.public_route_table
  public_subnet_id                = module.kafka_subnets.public_subnet_id
  public_route_table_association  = module.route_table.public_route_table
  gateway_id                      = module.kafka_internet_gateway.aws_internet_gw_id
  private_route_table             = var.private_route_table
  private_route_table_association = module.route_table.private_route_table
  private_subnets_id              = module.kafka_subnets.private_subnets_id[*]
  nat_gateway_id                  = module.nat_gateway.nat_gateway_id
}

module "network_acl" {
  source = "./modules/nacl"
  /* inbound_ssh_ports */
  network_acl_id          = module.network_acl.network_acl_id
  inbound_ssh_rule_number = var.inbound_ssh_rule_number
  inbound_ssh_egress      = var.inbound_ssh_egress
  inbound_ssh_protocol    = var.inbound_ssh_protocol
  inbound_ssh_rule_action = var.inbound_ssh_rule_action
  inbound_ssh_cidr_block  = var.inbound_ssh_cidr_block
  inbound_ssh_from_port   = var.inbound_ssh_from_port
  inbound_ssh_to_port     = var.inbound_ssh_to_port
  /* inbound_zkeeper_ports */
  inbound_zkeeper_cidr_block  = var.inbound_zkeeper_cidr_block
  inbound_zkeeper_rule_number = var.inbound_zkeeper_rule_number
  inbound_zkeeper_egress      = var.inbound_zkeeper_egress
  inbound_zkeeper_protocol    = var.inbound_zkeeper_protocol
  inbound_zkeeper_rule_action = var.inbound_zkeeper_rule_action
  inbound_zkeeper_from_port   = var.inbound_zkeeper_from_port
  inbound_zkeeper_to_port     = var.inbound_zkeeper_to_port
  /* inbound_kafka_ports */
  inbound_kafka_cidr_block  = var.inbound_kafka_cidr_block
  inbound_kafka_rule_number = var.inbound_kafka_rule_number
  inbound_kafka_egress      = var.inbound_kafka_egress
  inbound_kafka_protocol    = var.inbound_kafka_protocol
  inbound_kafka_rule_action = var.inbound_kafka_rule_action
  inbound_kafka_from_port   = var.inbound_kafka_from_port
  inbound_kafka_to_port     = var.inbound_kafka_to_port
  /* outbound_ssh_ports */
  outbound_ssh_rule_number = var.outbound_ssh_rule_number
  outbound_ssh_egress      = var.outbound_ssh_egress
  outbound_ssh_protocol    = var.outbound_ssh_protocol
  outbound_ssh_rule_action = var.outbound_ssh_rule_action
  outbound_ssh_cidr_block  = var.outbound_ssh_cidr_block
  outbound_ssh_from_port   = var.outbound_ssh_from_port
  outbound_ssh_to_port     = var.outbound_ssh_to_port
  /* outbound_zkeeper_ports */
  outbound_zkeeper_cidr_block  = var.outbound_zkeeper_cidr_block
  outbound_zkeeper_rule_number = var.outbound_zkeeper_rule_number
  outbound_zkeeper_egress      = var.outbound_zkeeper_egress
  outbound_zkeeper_protocol    = var.outbound_zkeeper_protocol
  outbound_zkeeper_rule_action = var.outbound_zkeeper_rule_action
  outbound_zkeeper_from_port   = var.outbound_zkeeper_from_port
  outbound_zkeeper_to_port     = var.outbound_zkeeper_to_port
  /* outbound_kafka_ports */
  outbound_kafka_cidr_block  = var.outbound_kafka_cidr_block
  outbound_kafka_rule_number = var.outbound_kafka_rule_number
  outbound_kafka_egress      = var.outbound_kafka_egress
  outbound_kafka_protocol    = var.outbound_kafka_protocol
  outbound_kafka_rule_action = var.outbound_kafka_rule_action
  outbound_kafka_from_port   = var.outbound_kafka_from_port
  outbound_kafka_to_port     = var.outbound_kafka_to_port
  /* network_acl association */
  network_acl             = var.network_acl
  kafka_vpc_id            = module.kafka_vpc.kafka_vpc_id
  network_acl_association = module.network_acl.network_acl_id
  private_subnets_id      = module.kafka_subnets.private_subnets_id[*]
}

module "servers" {
  source = "./modules/servers"
  /* bastion server */
  bastion_ami           = var.bastion_ami
  bastion_instance_type = var.bastion_instance_type
  bastion_subnet_id     = module.kafka_subnets.public_subnet_id
  bastion_key_name      = var.bastion_key_name
  bastion_host_name     = var.bastion_host_name
  bastion_sg_id         = module.security-groups.bastion_sg
  /* zookeeper servers */
  zkeeper_ami           = var.zkeeper_ami
  zkeeper_instance_type = var.zkeeper_instance_type
  zkeeper_subnets_id = module.kafka_subnets.private_subnets_id
  zkeeper_key_name      = var.zkeeper_key_name
  zkeeper_sg            = module.security-groups.zkeeper_sg
  zkeeper_servers       = var.zkeeper_servers
  /* kafka servers */
  kafka_ami           = var.kafka_ami
  kafka_instance_type = var.kafka_instance_type
  #kafka_subnets_id = module.kafka_subnets.private_subnets_id[*]
  kafka_subnets_id = module.kafka_subnets.private_subnets_id
  kafka_key_name = var.kafka_key_name
  kafka_sg       = module.security-groups.kafka_sg
  kafka_servers  = var.kafka_servers
}

module "security-groups" {
  source       = "./modules/security-groups"
  kafka_vpc_id = module.kafka_vpc.kafka_vpc_id

  bastion_sg_name            = var.bastion_sg_name
  bastion_ingress_protocol   = var.bastion_ingress_protocol
  bastion_ingress_from_port  = var.bastion_ingress_from_port
  bastion_ingress_to_port    = var.bastion_ingress_to_port
  bastion_ingress_cidr_block = var.bastion_ingress_cidr_block

  bastion_ssh_ingress_from_port  = var.bastion_ssh_ingress_from_port
  bastion_ssh_ingress_to_port    = var.bastion_ssh_ingress_to_port
  bastion_ssh_ingress_protocol   = var.bastion_ssh_ingress_protocol
  bastion_ssh_ingress_cidr_block = var.bastion_ssh_ingress_cidr_block

  bastion_egress_protocol   = var.bastion_egress_protocol
  bastion_egress_from_port  = var.bastion_egress_from_port
  bastion_egress_to_port    = var.bastion_egress_to_port
  bastion_egress_cidr_block = var.bastion_egress_cidr_block

  zkeeper_sg_name             = var.zkeeper_sg_name
  zkeeper_ingress_from_port   = var.zkeeper_ingress_from_ports
  zkeeper_ingress_to_port     = var.zkeeper_ingress_to_ports
  zkeeper_ingress_protocol    = var.zkeeper_ingress_protocol
  zkeeper_ingress_cidr_blocks = var.zkeeper_ingress_cidr_blocks

  zkeeper_ssh_ingress_from_port  = var.zkeeper_ssh_ingress_from_port
  zkeeper_ssh_ingress_to_port    = var.zkeeper_ssh_ingress_to_port
  zkeeper_ssh_ingress_protocol   = var.zkeeper_ssh_ingress_protocol
  zkeeper_ssh_ingress_cidr_block = var.zkeeper_ssh_ingress_cidr_block

  zkeeper_egress_from_port  = var.zkeeper_egress_from_port
  zkeeper_egress_to_port    = var.zkeeper_egress_to_port
  zkeeper_egress_protocol   = var.zkeeper_egress_protocol
  zkeeper_egress_cidr_block = var.zkeeper_egress_cidr_block

  kafka_sg_name             = var.kafka_sg_name
  kafka_ingress_from_port   = var.kafka_ingress_from_ports
  kafka_ingress_to_port     = var.kafka_ingress_to_ports
  kafka_ingress_protocol    = var.kafka_ingress_protocol
  kafka_ingress_cidr_blocks = var.kafka_ingress_cidr_blocks

  kafka_ssh_ingress_from_port  = var.kafka_ssh_ingress_from_port
  kafka_ssh_ingress_to_port    = var.kafka_ssh_ingress_to_port
  kafka_ssh_ingress_protocol   = var.kafka_ssh_ingress_protocol
  kafka_ssh_ingress_cidr_block = var.kafka_ssh_ingress_cidr_block

  kafka_egress_from_port  = var.kafka_egress_from_port
  kafka_egress_to_port    = var.kafka_egress_to_port
  kafka_egress_protocol   = var.kafka_egress_protocol
  kafka_egress_cidr_block = var.kafka_egress_cidr_block
}


