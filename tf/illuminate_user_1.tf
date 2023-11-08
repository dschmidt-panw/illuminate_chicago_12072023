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
    status = "Suspended"
  }
}

resource "aws_s3_bucket_public_access_block" "illuminate_bucket_1_access_policy" {
  bucket = aws_s3_bucket.illuminate_user_1.id
  # replace 'false' with 'true' below
  block_public_acls   = false
  block_public_policy = false
  restrict_public_buckets = false
  ignore_public_acls = false
}
