data "aws_availability_zones" "available" {
  
}

/* Public Subnet */
resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.kafka_vpc_id
  cidr_block              = var.public_subnet_cidr_block
  availability_zone       = var.public_subnet_availability_zone
  map_public_ip_on_launch = true
  
  tags = {
    Name = var.public_subnet_name
  }
}

/* Private Subnet */
resource "aws_subnet" "private_subnets" {
  count = 6
  vpc_id = var.kafka_vpc_id
  availability_zone = data.aws_availability_zones.available.names[count.index % 3]
  cidr_block = var.private_subnets_cidr_block[count.index]
  map_public_ip_on_launch = false

  tags = {
  Name = "${var.private_subnets_name}-${count.index + 1}"
 }
}

