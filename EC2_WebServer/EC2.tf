#------------------------------------------------
# Terraform by Mobidev
#
# EC2.tf file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------

resource "aws_instance" "server" {
  key_name               = "Ec2"
  ami                    = "ami-076431be05aaf8080"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.server.id]
  user_data              = file("Web Server.sh")
  tags = merge(var.main_tags, {
    Name = "Server for ${var.main_tags["Environment"]}"
  })

}