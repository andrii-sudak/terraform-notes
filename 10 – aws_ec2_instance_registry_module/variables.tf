# Provider
variable "aws_region" {
  default = "us-east-1"
  type    = string
}

# Module
variable "environment" {
  default = "dev"
  type    = string
}

# Instance
variable "ami" {
  default = "ami-05d47d29a4c2d19e1" # Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
  type    = string
}

variable "instance_type" {
  default = "t4g.small" # vCPUs: 2 RAM: 2GiB arm64
  type    = string
}

variable "instance_name" {
  default = "andrii-sudak-terraform-example"
}
