resource "aws_subnet" "public_1"{
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.0/26"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1a"
    tags = {
     Name = "Activity4-public-subnet1"
    }
}

resource "aws_subnet" "public_2"{
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.64/26"
    map_public_ip_on_launch = true
    availability_zone = "us-east-1b"
    tags = {
     Name = "Activity4-public-subnet2"
    }
}

resource "aws_subnet" "private_1"{
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.128/26"
    availability_zone = "us-east-1a"
    tags = {
     Name = "Activity4-private-subnet1"
    }
}

resource "aws_subnet" "private_2"{
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.192/26"
    availability_zone = "us-east-1b"
    tags = {
     Name = "Activity4-private-subnet2"
    }
}