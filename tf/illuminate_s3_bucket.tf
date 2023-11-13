resource "aws_s3_bucket" "illuminate_bucket" {
  bucket        = "illuminate-chicago-12092023-bucket"

  tags = {
    Replace_this_tag       = "Palo Alto Networks - Prisma Cloud"
    Environment = "Illuminate Chicago Workshop 12072023"
  }

  force_destroy = true
}

resource "aws_s3_bucket_versioning" "s3_versioning_for_illuminate_bucket" {
  bucket = aws_s3_bucket.illuminate_bucket.id
  versioning_configuration {
    status = "Suspended"
  }
}

resource "aws_s3_bucket_public_access_block" "illuminate_bucket_access_policy" {
  bucket = aws_s3_bucket.illuminate_bucket.id
  block_public_acls   = false
  block_public_policy = false
  restrict_public_buckets = false
  ignore_public_acls = false
}
