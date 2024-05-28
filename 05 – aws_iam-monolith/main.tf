provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "user1-iam-aws_iam_user" {
  name = "user1"
}

resource "aws_iam_user" "user2-iam-aws_iam_user" {
  name = "user2"
}

# HereDoc approach
# The policy description in JSON format can be found in the IAM -> Policies
resource "aws_iam_policy" "adminUserHeredoc" {
  name   = "AdminUsersHeredoc"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}

# File approach
resource "aws_iam_policy" "adminUserFile" {
  name   = "AdminUsersFile"
  policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "user1AdminAccess" {
  user       = aws_iam_user.user1-iam-aws_iam_user.name
  policy_arn = aws_iam_policy.adminUserHeredoc.arn
}

resource "aws_iam_user_policy_attachment" "user2AdminAccess" {
  user       = aws_iam_user.user2-iam-aws_iam_user.name
  policy_arn = aws_iam_policy.adminUserFile.arn
}

data "aws_iam_users" "users" {}

#  Will be actual after executing the terraform refresh command
output "iam_users" {
  value = data.aws_iam_users.users.names
}
