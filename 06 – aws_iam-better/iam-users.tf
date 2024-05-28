resource "aws_iam_user" "projectOneUsers" {
  for_each = toset(var.projectOneUsersList)
  name     = each.value
}
