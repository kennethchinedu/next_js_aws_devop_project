output "ec2_public_ip" {
  value = aws_instance.server1.public_ip
}

output "ec2_private_ip" {
  value = aws_instance.server1.private_ip
}

output "dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.lb.dns_name
}