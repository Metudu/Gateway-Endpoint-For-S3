resource "aws_instance" "public_instance" {
    ami = var.instance-ami
    instance_type = var.instance-type
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [ aws_security_group.security_group.id ]

    tags = {
      Name: var.public-instance-name
    }
}

resource "aws_instance" "private_instance" {
    ami = var.instance-ami
    instance_type = var.instance-type
    subnet_id = aws_subnet.private_subnet.id
    vpc_security_group_ids = [ aws_security_group.security_group.id ]
    iam_instance_profile = aws_iam_instance_profile.iam_instance_profile.name
    key_name = data.aws_key_pair.key_pair.key_name

    tags = {
      Name: var.private-instance-name
    }
}