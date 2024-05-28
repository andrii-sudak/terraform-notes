More advanced example of IAM resource management.

We can edit the list of users without touching other users in the list.

```
# data.aws_iam_users.users:
data "aws_iam_users" "users" {
    arns  = [
        "arn:aws:iam::005573694246:user/andrii",
        "arn:aws:iam::005573694246:user/jazz",
        "arn:aws:iam::005573694246:user/marta",
        "arn:aws:iam::005573694246:user/olha",
        "arn:aws:iam::005573694246:user/valik",
        "arn:aws:iam::005573694246:user/vlad",
    ]
    id    = "us-east-1"
    names = [
        "andrii",
        "jazz",
        "marta",
        "olha",
        "valik",
        "vlad",
    ]
}

# aws_iam_policy.adminUsersPolicy:
resource "aws_iam_policy" "adminUsersPolicy" {
    arn       = "arn:aws:iam::005573694246:policy/AdminUsers"
    id        = "arn:aws:iam::005573694246:policy/AdminUsers"
    name      = "AdminUsers"
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
    policy_id = "ANPAQCTBX2MTJ6YUHZUX6"
    tags      = {}
    tags_all  = {}
}

# aws_iam_user.projectOneUsers["andrii"]:
resource "aws_iam_user" "projectOneUsers" {
    arn           = "arn:aws:iam::005573694246:user/andrii"
    force_destroy = false
    id            = "andrii"
    name          = "andrii"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTMXT4VFWAF"
}

# aws_iam_user.projectOneUsers["jazz"]:
resource "aws_iam_user" "projectOneUsers" {
    arn           = "arn:aws:iam::005573694246:user/jazz"
    force_destroy = false
    id            = "jazz"
    name          = "jazz"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTFODMI25WJ"
}

# aws_iam_user.projectOneUsers["marta"]:
resource "aws_iam_user" "projectOneUsers" {
    arn           = "arn:aws:iam::005573694246:user/marta"
    force_destroy = false
    id            = "marta"
    name          = "marta"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTFPBFJ27CD"
}

# aws_iam_user.projectOneUsers["olha"]:
resource "aws_iam_user" "projectOneUsers" {
    arn           = "arn:aws:iam::005573694246:user/olha"
    force_destroy = false
    id            = "olha"
    name          = "olha"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTAUVLZ6WC7"
}

# aws_iam_user.projectOneUsers["valik"]:
resource "aws_iam_user" "projectOneUsers" {
    arn           = "arn:aws:iam::005573694246:user/valik"
    force_destroy = false
    id            = "valik"
    name          = "valik"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTJICQAZLCU"
}

# aws_iam_user.projectOneUsers["vlad"]:
resource "aws_iam_user" "projectOneUsers" {
    arn           = "arn:aws:iam::005573694246:user/vlad"
    force_destroy = false
    id            = "vlad"
    name          = "vlad"
    path          = "/"
    tags          = {}
    tags_all      = {}
    unique_id     = "AIDAQCTBX2MTFNHG3PQFR"
}

# aws_iam_user_policy_attachment.projectOneUsersAdminAccess["andrii"]:
resource "aws_iam_user_policy_attachment" "projectOneUsersAdminAccess" {
    id         = "andrii-20240103213520454000000006"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsers"
    user       = "andrii"
}

# aws_iam_user_policy_attachment.projectOneUsersAdminAccess["jazz"]:
resource "aws_iam_user_policy_attachment" "projectOneUsersAdminAccess" {
    id         = "jazz-20240103213519972100000001"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsers"
    user       = "jazz"
}

# aws_iam_user_policy_attachment.projectOneUsersAdminAccess["marta"]:
resource "aws_iam_user_policy_attachment" "projectOneUsersAdminAccess" {
    id         = "marta-20240103213520295400000003"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsers"
    user       = "marta"
}

# aws_iam_user_policy_attachment.projectOneUsersAdminAccess["olha"]:
resource "aws_iam_user_policy_attachment" "projectOneUsersAdminAccess" {
    id         = "olha-20240103213520122400000002"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsers"
    user       = "olha"
}

# aws_iam_user_policy_attachment.projectOneUsersAdminAccess["valik"]:
resource "aws_iam_user_policy_attachment" "projectOneUsersAdminAccess" {
    id         = "valik-20240103213520303300000004"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsers"
    user       = "valik"
}

# aws_iam_user_policy_attachment.projectOneUsersAdminAccess["vlad"]:
resource "aws_iam_user_policy_attachment" "projectOneUsersAdminAccess" {
    id         = "vlad-20240103213520309700000005"
    policy_arn = "arn:aws:iam::005573694246:policy/AdminUsers"
    user       = "vlad"
}


Outputs:

iam_users = [
    "andrii",
    "jazz",
    "marta",
    "olha",
    "valik",
    "vlad",
]
```
