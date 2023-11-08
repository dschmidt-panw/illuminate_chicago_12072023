resource "aws_s3_bucket" "illuminate_user_1" {
  bucket        = "illuminate-chicago-bucket-for-illuminate-user-1"

  tags = {
    Owner        = "illuminate_user_1"
    Environment = "Illuminate Chicago Workshop 12072023"
    SomeTag     = "somevalue"
  }

  force_destroy = true
}

