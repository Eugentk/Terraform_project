#------------------------------------------------
# Terraform by Mobidev
#
# Variables.tf file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------
variable "region" {
  description = "Please Enter AWS region"
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "Please Enter Instance Type"
  default     = "t2.micro"
}

variable "public_key_path" {
  description = "Please choose public key"
  default = "./public_key.txt"
}

variable "main_tags" {
  description = "Common tags"
  type = map(string)
  default = {
    Maintainer : "Eugen Tkachenko"
    Project : "Terraform Docker Server Mobidev"
    Environment : "Dev"
  }
}
