# Input variables
variable "example_variable" {
  default = "default_value"
}

resource "local_file" "example_fle" {
  filename = "./example_file.txt"
  content  = var.example_variable  # Implicit dependence
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "example_file_two" {
  filename   = "./dependent_example_file.txt"
  content    = "Some static content"
  depends_on = [local_file.example_fle]  # Explicit dependency
  lifecycle {
    prevent_destroy = false
  }
}

# Output variables
output "example_output_content" {
  value = local_file.example_fle.content
}

output "example_output_id" {
  value = local_file.example_fle.id
}
