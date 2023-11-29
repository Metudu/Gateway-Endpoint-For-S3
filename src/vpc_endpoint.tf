resource "aws_vpc_endpoint" "s3_gateway_endpoint" {
  vpc_id       = aws_vpc.vpc.id
  service_name = "com.amazonaws.${var.aws_region}.s3"
}

resource "aws_vpc_endpoint_route_table_association" "gateway-endpoint-rt-association" {
  vpc_endpoint_id = aws_vpc_endpoint.s3_gateway_endpoint.id
  route_table_id = aws_route_table.private-subnet-rt.id
}