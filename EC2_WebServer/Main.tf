#------------------------------------------------
# Terraform by Mobidev
#
# Main.tf file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------

provider "aws" {
  region = var.region # Main region
}
# Repository when save state file
terraform {
  backend "s3" {
    bucket = "terraform-state-tk"
    key = "global/s3/ec2webserver/terraform.tfstate"
    region = "eu-central-1"
  }
}
