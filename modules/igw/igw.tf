/* Internet gateway for the public subnet */
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = var.kafka_vpc_id
  tags = {
    Name = var.internet_gateway
  }
}


