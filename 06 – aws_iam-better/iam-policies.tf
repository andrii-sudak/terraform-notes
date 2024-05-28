resource "aws_iam_policy" "adminUsersPolicy" {
  name   = "AdminUsers"
  policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "projectOneUsersAdminAccess" {
  for_each   = toset(var.projectOneUsersList)
  user       = aws_iam_user.projectOneUsers[each.key].name
  policy_arn = aws_iam_policy.adminUsersPolicy.arn
}
