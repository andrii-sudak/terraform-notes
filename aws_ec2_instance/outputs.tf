output "public_ipv4" {
  description = "EC2 insance public IPv4 adress"
  value       = aws_instance.instance.public_ip
}
