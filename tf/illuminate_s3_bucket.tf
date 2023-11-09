resource "aws_s3_bucket" "illuminate_user_1" {
  bucket        = "illuminate-chicago-12092023-bucket"

  tags = {
    Repalce_this_tag        = "Palo Alto Networks - Prisma Cloud"
    Environment = "Illuminate Chicago Workshop 12072023"
  }

  force_destroy = true
}

resource "aws_s3_bucket_versioning" "s3_versioning_for_illuminate_user_1" {
  bucket = aws_s3_bucket.illuminate_user_1.id
  versioning_configuration {
    status = "Suspended"
  }
}

resource "aws_s3_bucket_public_access_block" "illuminate_user_1_bucket_access_policy" {
  bucket = aws_s3_bucket.illuminate_user_1.id
  block_public_acls   = false
  block_public_policy = false
  restrict_public_buckets = false
  ignore_public_acls = false
}
