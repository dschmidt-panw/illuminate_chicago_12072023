resource "aws_s3_bucket" "illuminate_user_1" {
  bucket        = "illuminate-chicago-bucket-for-illuminate-user-1"

  versioning {
      enabled = true
  }

  tags = {
    Owner        = "illuminate_user_1"
    Environment = "Illuminate Chicago Workshop 12072023"
  }

  force_destroy = true
}

