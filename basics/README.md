We can create [input variables](https://developer.hashicorp.com/terraform/language/values/variables) and use them in our configuration. If we use the value of some variable in some resource, it means that we have [implicitly dependency](https://developer.hashicorp.com/terraform/tutorials/configuration-language/dependencies#manage-implicit-dependencies), that is, the dependent resource may change if the value of the variable is changed.

We can create [output variables](https://developer.hashicorp.com/terraform/language/values/outputs) to use it to get certain information or for other tools like Ansible.

Thanks to [`depends_on`](https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on), we can control the order and relation of resources.

[Lifecycle policies](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle) help us control the behavior of resources.

```
# local_file.example_file_two:
resource "local_file" "example_file_two" {
    content              = "Some static content"
    content_base64sha256 = "zEO6P/YAfXgzl4NNln2NCkT8E8lvudGHhCF9IVil+KE="
    content_base64sha512 = "ZAwdRiHRYeXbV8Fj+6XGyUybxWNrsyjOEWCOYUodXSQ9N3IleYhclbylbqROnzcxPTYsUvqw5S5H++AQJ5TLXQ=="
    content_md5          = "43ee4bc11e214c4543d5882ec3a173e6"
    content_sha1         = "8227d179600d047354eda8e7ba7873bb8505e764"
    content_sha256       = "cc43ba3ff6007d783397834d967d8d0a44fc13c96fb9d18784217d2158a5f8a1"
    content_sha512       = "640c1d4621d161e5db57c163fba5c6c94c9bc5636bb328ce11608e614a1d5d243d37722579885c95bca56ea44e9f37313d362c52fab0e52e47fbe0102794cb5d"
    directory_permission = "0777"
    file_permission      = "0777"
    filename             = "./dependent_example_file.txt"
    id                   = "8227d179600d047354eda8e7ba7873bb8505e764"
}

# local_file.example_fle:
resource "local_file" "example_fle" {
    content              = "default_value"
    content_base64sha256 = "43/HXzZUzuJRYIlVUE0cNHBrN3B5+WbwhCY7l4KydYg="
    content_base64sha512 = "mlrct02VeHufUxACCzde6cRlmwTcGpRZRUXwiuLf9e6xEDnUhKHC5yH+3BUKWWI0UG6FqSJnRbvgnv/ux43SnQ=="
    content_md5          = "d354f24e5d9b72df39f39243c80d9d80"
    content_sha1         = "c6c8109f13a310f20c45ad334e5f0e159a4fb896"
    content_sha256       = "e37fc75f3654cee251608955504d1c34706b377079f966f084263b9782b27588"
    content_sha512       = "9a5adcb74d95787b9f5310020b375ee9c4659b04dc1a94594545f08ae2dff5eeb11039d484a1c2e721fedc150a596234506e85a9226745bbe09effeec78dd29d"
    directory_permission = "0777"
    file_permission      = "0777"
    filename             = "./example_file.txt"
    id                   = "c6c8109f13a310f20c45ad334e5f0e159a4fb896"
}


Outputs:

example_output_content = "default_value"
example_output_id = "c6c8109f13a310f20c45ad334e5f0e159a4fb896"
```