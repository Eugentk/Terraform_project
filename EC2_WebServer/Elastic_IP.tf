#------------------------------------------------
# Terraform by Mobidev
#
# Elastic_IP.tf file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------

resource "aws_eip" "static_ip" {
  instance = aws_instance.server.id
  vpc = true
  tags = merge(var.main_tags, {
    Name = "Elastic IP for ${var.main_tags["Environment"]}"
  })
}