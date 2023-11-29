resource "aws_iam_role" "iam_role" {
  name = var.iam-role-name

  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sts:AssumeRole"
            ],
            "Principal": {
                "Service": [
                    "ec2.amazonaws.com"
                ]
            }
        }
    ]
  })
  tags = {
    tag-key = var.iam-role-tag-name
  }
}

