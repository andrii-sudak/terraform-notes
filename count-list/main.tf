resource "local_sensitive_file" "name" {
  filename = var.users[count.index]
  content  = var.content
  count    = length(var.users)
}
