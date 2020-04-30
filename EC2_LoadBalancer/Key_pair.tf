#------------------------------------------------
# Terraform by Mobidev
#
# Key_pair.tf file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------

resource "aws_key_pair" "Ec2" {
  key_name   = "Ec2"
  public_key = file(var.public_key_path)
}
