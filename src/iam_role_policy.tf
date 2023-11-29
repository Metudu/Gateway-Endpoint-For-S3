resource "aws_iam_role_policy" "inline-policy" {
    role = aws_iam_role.iam_role.id
    policy = jsonencode({
        "Version" : "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": [
                    "s3:Get*",
                    "s3:List*"
                ],
                "Resource": "*"
            }
        ]
    })
}