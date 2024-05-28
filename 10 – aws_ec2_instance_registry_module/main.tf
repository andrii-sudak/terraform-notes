provider "aws" {
  region = var.aws_region
}

module "vpc_security_group_allow_ssh" {
  source = "terraform-aws-modules/security-group/aws"

  name = "allow_ssh"

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}

module "aws_ssh_key" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name              = "andrii-sudak_ssh_key"
  private_key_algorithm = "ED25519"
  private_key_rsa_bits  = "4096"
  create_private_key    = true
}

resource "local_file" "private_ssh_key_file" {
  filename        = "private_ssh_key"
  content         = "${module.aws_ssh_key.private_key_openssh}\n" # \n to fix Invalid format SSH error
  file_permission = "0400"
}

module "aws_ec2_instance_from_registry" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                   = "${var.instance_name}-${var.environment}"
  instance_type          = var.instance_type
  ami                    = var.ami
  vpc_security_group_ids = [module.vpc_security_group_allow_ssh.security_group_id]
  key_name               = module.aws_ssh_key.key_pair_name
}

output "ipv4" {
  value = module.aws_ec2_instance_from_registry.public_ip
}
