resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc.id  
  cidr_block = var.public-subnet-cidr-block
  map_public_ip_on_launch = true // to make the subnet public

  tags = {
    Name: var.public-subnet-name
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc.id 
  cidr_block = var.private-subnet-cidr-block

  tags = {
    Name: var.private-subnet-name
  }
}