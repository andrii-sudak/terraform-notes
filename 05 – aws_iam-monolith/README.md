Here we have a simple example of setup of IAM.

[AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

AWS credentials can be stored in the `provider` section or `.aws/credentials`  or in the ENV variable  `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.

```
# data.aws_iam_users.users:
data "aws_iam_users" "users" {
    arns  = [
        "arn:aws:iam::005573694246:user/user1",
        "arn:aws:iam::005573694246:user/user2",
    ]
    id    = "us-east-1"
    names = [
        "user1",
        "user2",
    ]
}

# aws_iam_policy.adminUserFile:
resource "aws_iam_policy" "adminUserFile" {
    arn       = "arn:aws:iam::005573694246:policy/AdminUsersFile"
    id        = "arn:aws:iam::005573694246:policy/AdminUsersFile"
    name      = "AdminUsersFile"
    path      = "/"
    policy    = jsonencode(
        {
            Statement = [
                {
                    Action   = "*"
                    Effect   = "Allow"
                    Resource = "*"
                },
            ]
            Version   = "2012-10-17"
        }
    )
    policy_id = "ANPAQCTBX2MTKOQDQSFPV"
    tags      = {}
    tags_all  = {}
}

# aws_iam_policy.adminUserHeredoc:
resource "aws_iam_policy" "adminUserHeredoc" {
    arn       = "arn:aws:iam::005573694246:policy/AdminUsersHeredoc"
    id        = "arn:aws:iam::005573694246:policy/AdminUsersHeredoc"
    name      = "AdminUsersHeredoc"
    path      = "/"
    policy    = jsonencode(
        {
            Statement = [
                {
                    Action   = "*"
                    Effect   = "Allow"
                    Resource = "*"
                },
            ]
            Version   = "2012-10-17"
        }
    )
    policy_id = "ANPAQCTBX2MTIRXWOPAVX"
    tags      = {}
    tags_all  = {}
}

# aws_iam_user.user1-iam-aws_iam_user:
resource "aws_iam_user" "user1-iam-aws_iam_user" {
    arn           = "arn:aws:iam::005573694246:user/user1"
    force_destroy = false
    id            = "user1"
    name          = "user1"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTN2QEOYC2W"
}

# aws_iam_user.user2-iam-aws_iam_user:
resource "aws_iam_user" "user2-iam-aws_iam_user" {
    arn           = "arn:aws:iam::005573694246:user/user2"
    force_destroy = false
    id            = "user2"
    name          = "user2"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTIIJMV4SXB"
}

# aws_iam_user_policy_attachment.user1AdminAccess:
resource "aws_iam_user_policy_attachment" "user1AdminAccess" {
    id         = "user1-20240103204827606900000002"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsersHeredoc"
    user       = "user1"
}

# aws_iam_user_policy_attachment.user2AdminAccess:
resource "aws_iam_user_policy_attachment" "user2AdminAccess" {
    id         = "user2-20240103204827541500000001"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsersFile"
    user       = "user2"
}


Outputs:

iam_users = [
    "user1",
    "user2",
]
```