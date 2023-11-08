resource "aws_s3_bucket" "illuminate_user_1" {
  bucket        = "illuminate-chicago-bucket-for-illuminate-user-1"

  tags = {
    Owner        = "illuminate_user_1"
    Environment = "Illuminate Chicago Workshop 12072023"
  }

  force_destroy = true
}

resource "aws_s3_bucket_versioning" "s3_versioning_for_illuminate_user_1" {
  bucket = aws_s3_bucket.illuminate_user_1.id
  versioning_configuration {
    status = "Disabled"
  }
}
