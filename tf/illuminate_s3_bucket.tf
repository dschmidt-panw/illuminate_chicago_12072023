resource "aws_s3_bucket" "illuminate_bucket" {
  bucket        = "illuminate-chicago-12092023-bucket"

  tags = {
    Owner       = "Palo Alto Networks - Prisma Cloud"
    Environment = "Illuminate Chicago Workshop 12072023"
  }

  force_destroy = true
}

resource "aws_s3_bucket_versioning" "s3_versioning_for_illuminate_bucket" {
  bucket = aws_s3_bucket.illuminate_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "illuminate_bucket_access_policy" {
  bucket = aws_s3_bucket.illuminate_bucket.id
  block_public_acls   = true
  block_public_policy = true
  restrict_public_buckets = true
  ignore_public_acls = true
}
