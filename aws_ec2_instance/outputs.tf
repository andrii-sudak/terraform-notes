output "public_ipv4" {
  description = "EC2 instance public IPv4 address"
  value       = aws_instance.instance.public_ip
}
