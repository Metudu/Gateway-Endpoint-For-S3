resource "aws_route_table" "public_subnet_rt" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.internet_gateway.id
    }

    tags = {
      Name: var.public-rt-name
    }
}

resource "aws_route_table_association" "public-rt-association" {
    route_table_id = aws_route_table.public_subnet_rt.id
    subnet_id = aws_subnet.public_subnet.id
}

resource "aws_route_table" "private-subnet-rt" {
    vpc_id = aws_vpc.vpc.id

    tags = {
      Name: var.private-rt-name
    }
}

resource "aws_route_table_association" "private-rt-association" {
    route_table_id = aws_route_table.private-subnet-rt.id
    subnet_id = aws_subnet.private_subnet.id
}