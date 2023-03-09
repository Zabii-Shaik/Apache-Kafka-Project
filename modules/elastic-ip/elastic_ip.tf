/* Elastic IP for NAT */
resource "aws_eip" "elastic_ip" {
  vpc        = true
}

