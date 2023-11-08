resource "aws_s3_bucket" "illuminate_user_1" {
  bucket        = "illuminate-chicago-bucket-for-illuminate-user-1"

  tags = {
    Owner        = "illuminate_user_1"
    Environment = "Illuminate Chicago Workshop 12072023"
    illuminate_user_1  = "Hello Illuminate Workshop"
  }

  force_destroy = true
}

resource "aws_s3_bucket_versioning" "s3_versioning_for_illuminate_user_1" {
  bucket = aws_s3_bucket.illuminate_user_1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "illuminate_user_1_bucket_access_policy" {
  bucket = aws_s3_bucket.illuminate_user_1.id
  block_public_acls   = true
  block_public_policy = true
  restrict_public_buckets = true
  ignore_public_acls = true
}
