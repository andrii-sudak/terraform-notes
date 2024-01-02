data "local_file" "example_secret" {
  filename = "./source_file.txt"
}

resource "local_file" "target_file" {
  filename   = "./target_file.txt"
  content    = data.local_file.example_secret.content
  depends_on = [data.local_file.example_secret]
}
