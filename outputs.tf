output "subnet_test" {
    value = aws_subnet.pub_subnets
}

output "subnet_count" {
    value = length(aws_subnet.pub_subnets)
}

output "ec2_public_ip" {
    value = [ "${join(",", aws_instance.WebServer.*.public_ip)}" ]
}
