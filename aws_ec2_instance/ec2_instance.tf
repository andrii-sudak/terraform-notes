resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.generated_ssh_key.id
  vpc_security_group_ids = ["${aws_security_group.ssh_access.id}"]
  depends_on = [tls_private_key.ssh_key,
    aws_key_pair.generated_ssh_key,
    aws_security_group.ssh_access
  ]
  tags = {
    Name = var.instance_name
  }
}
