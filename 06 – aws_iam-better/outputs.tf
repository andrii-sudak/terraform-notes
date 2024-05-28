data "aws_iam_users" "users" {}

output "iam_users" {
  value = data.aws_iam_users.users.names
}
