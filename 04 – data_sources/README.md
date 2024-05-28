[Data sources](https://developer.hashicorp.com/terraform/language/data-sources) we use for resources outside the terraform configuration. Data sources can be found in the documentation for a particular module.

```
# data.local_file.example_secret:
data "local_file" "example_secret" {
    content              = <<-EOT
        Real secret
    EOT
    content_base64       = "UmVhbCBzZWNyZXQK"
    content_base64sha256 = "qBixj4OlMvdj02DNSHNaeqS3v7xs1vPr8RJliVLVaiE="
    content_base64sha512 = "E+D3n8BzvAm36e6zOsC+qENAZBRa03yO02VpULg7/4zEfXZ+PIcyH0JAkxWDcvR1/kMnS86DP4bXNC+F8bMxIw=="
    content_md5          = "d2c45ad930bacab1431be082d4cb3e42"
    content_sha1         = "8f5f9d5dd0c6b7b3c9585c4113580a1eb00ecb69"
    content_sha256       = "a818b18f83a532f763d360cd48735a7aa4b7bfbc6cd6f3ebf112658952d56a21"
    content_sha512       = "13e0f79fc073bc09b7e9eeb33ac0bea8434064145ad37c8ed3656950b83bff8cc47d767e3c87321f424093158372f475fe43274bce833f86d7342f85f1b33123"
    filename             = "./source_file.txt"
    id                   = "8f5f9d5dd0c6b7b3c9585c4113580a1eb00ecb69"
}

# local_file.target_file:
resource "local_file" "target_file" {
    content              = <<-EOT
        Real secret
    EOT
    content_base64sha256 = "qBixj4OlMvdj02DNSHNaeqS3v7xs1vPr8RJliVLVaiE="
    content_base64sha512 = "E+D3n8BzvAm36e6zOsC+qENAZBRa03yO02VpULg7/4zEfXZ+PIcyH0JAkxWDcvR1/kMnS86DP4bXNC+F8bMxIw=="
    content_md5          = "d2c45ad930bacab1431be082d4cb3e42"
    content_sha1         = "8f5f9d5dd0c6b7b3c9585c4113580a1eb00ecb69"
    content_sha256       = "a818b18f83a532f763d360cd48735a7aa4b7bfbc6cd6f3ebf112658952d56a21"
    content_sha512       = "13e0f79fc073bc09b7e9eeb33ac0bea8434064145ad37c8ed3656950b83bff8cc47d767e3c87321f424093158372f475fe43274bce833f86d7342f85f1b33123"
    directory_permission = "0777"
    file_permission      = "0777"
    filename             = "./target_file.txt"
    id                   = "8f5f9d5dd0c6b7b3c9585c4113580a1eb00ecb69"
}
```