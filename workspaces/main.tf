resource "local_file" "environment_file" {
  filename = "${lookup(var.content, terraform.workspace)}_file"
  content  = lookup(var.content, terraform.workspace)
}
