output "subnet_tests" {
    value = aws_subnet.pub_subnets
}

output "subnet_count" {
    value = length(aws_subnet.pub_subnets)
}

output "ec2_public_ips" {
    value = [ "${join(",", aws_instance.WebServer.*.public_ip)}" ]
}
