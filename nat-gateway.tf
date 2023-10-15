resource "aws_nat_gateway" "nat_gw" {
  
  allocation_id = aws_eip.nat1
  subnet_id     = aws_subnet.public_1.id
  tags = {
    Name = "Activity4-NAT-GW"
  }
}