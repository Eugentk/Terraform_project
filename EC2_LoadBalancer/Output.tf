#------------------------------------------------
# Terraform by Mobidev
#
# Output.tf file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------

output "latest_version_linux" {
  value = data.aws_ami.latest_version.id
}

output "Elastic_IP" {
  value = aws_eip.static_ip.public_ip
}