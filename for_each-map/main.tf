resource "local_sensitive_file" "name" {
    filename = each.value
    for_each = toset(var.users)
    content = var.content

}