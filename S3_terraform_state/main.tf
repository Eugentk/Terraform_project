#------------------------------------------------
# Terraform by Mobidev
#
# Create S3 to save state file
#
# Made by y.tkachenko@mobidev.biz
#-------------------------------------------------
provider "aws" {
  region = var.region
}
resource "aws_s3_bucket" "terraform-state-tk" {
  bucket = "terraform-state-tk"
  # Prevent accidental deletion of this S3 bucket

  lifecycle {
    prevent_destroy = true
  }

  # Enable versioning

  versioning {
    enabled = true
  }

  # Enable encryption by default

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}