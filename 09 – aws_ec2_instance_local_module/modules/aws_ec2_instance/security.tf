resource "tls_private_key" "ssh_key" {
  algorithm = "ED25519"
  rsa_bits  = "4096"
}

resource "local_file" "private_ssh_key_file" {
  filename        = "private_ssh_key"
  content         = tls_private_key.ssh_key.private_key_openssh
  file_permission = "0400"
}

resource "aws_key_pair" "generated_ssh_key" {
  key_name   = "generated_ssh_key"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "aws_security_group" "ssh_access" {
  name = "allow_ssh"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
