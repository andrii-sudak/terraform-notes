variable "users" {
  type    = list(string)
  default = ["./users/one", "./users/two", "./users/three", "./users/four"]
}
variable "content" {
  default = "password: change_me_please"
}
