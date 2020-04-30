#------------------------------------------------
# Terraform by Mobidev
#
# Output.tf file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------

output "Elastic_IP" {
  value = aws_eip.static_ip.public_ip
}