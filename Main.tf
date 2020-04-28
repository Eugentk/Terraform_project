#------------------------------------------------
# Terraform by Mobidev
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------
provider "aws" {
  region = var.region #
}
# Repository when save state file
terraform {
  backend "s3" {
    bucket = "terraform-state-tk"
    key = "global/s3/terraform.tfstate"
    region = "eu-central-1"
}
}
data "aws_availability_zones" "available" {}
data "aws_ami" "latest_version" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
}
output "latest_version_linux" {
  value = data.aws_ami.latest_version.id
}
resource "aws_instance" "server" {
  key_name               = "Ec2"
  ami                    = data.aws_ami.latest_version.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.server.id]
  tags = {
    Name  = "Server from Mobi"
    Owner = "Eugen Tkachenko"
  }
}
resource "aws_key_pair" "Ec2" {
  key_name   = "Ec2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCbwquOawJIDJm7VV3Q/TsP9JQuMwyT24KyjSlTVOWe5InglakVKNlhszgrhLhhftnyPZH74HmfOQDJxYNDN24M5TNmB3MOWjxe9DdSQ9mXzfuevxbyVVspedhSnSbUDbG7GGmvsrh+Zpn16B10unSra7zZ09ZCF0Fk8QDeWlVb8Le1VAsRFX/f3n/iDMjCTBjstRqQq/QbQZdSqYyyd0AaC2H2MtmijFtVipsNuEYYKdf14xIMzE+pyEctkVaRR1Hw78ZaUg2dTYdQjRGJcUAuVfPeBKIOu4HUzUAMPNTHHmqEdmSya3u7pehK4xTuk4QdCPBQjx1XReyRj/anAX9"
}
resource "aws_security_group" "server" {
  name        = "Server SG"
  description = "Security Group from Server"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}