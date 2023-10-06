output "ec2_private_ip" {
  value = aws_instance.demo-instance.private_ip
}

output "ec2_public_ip" {
  value = aws_instance.demo-instance.public_ip
}

output "vpc_id" {
  value = aws_vpc.demo_vpc.id
}

output "demo_subnet_private1_id" {
  value = aws_subnet.demo_subnet_private1.id
}

output "demo_subnet_private2_id" {
  value = aws_subnet.demo_subnet_private1.id
}

output "security_group" {
  value = aws_security_group.demo_traffic.name
}