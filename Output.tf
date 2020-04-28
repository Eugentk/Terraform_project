output "latest_version_linux" {
  value = data.aws_ami.latest_version.id
}

output "Elastic_IP" {
  value = aws_eip.static_ip.id
}