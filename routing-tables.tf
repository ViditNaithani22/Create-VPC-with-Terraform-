resource "public_route_table" "public_rt"{

  vpc_id = aws_vpc.main.id
  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
      Name = "public_rt"
  }
}

resource "private_route_table" "private_rt"{

  vpc_id = aws_vpc.main.id
  route{
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
      Name = "private_rt"
  }
}

