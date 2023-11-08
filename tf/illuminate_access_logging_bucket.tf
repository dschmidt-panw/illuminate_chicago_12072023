resource "aws_s3_bucket" "illuminate_log_bucket" {
  bucket = "illuminate-chicago-12072023-log-bucket"
}

#resource "aws_s3_bucket_acl" "illuminate_log_bucket_acl" {
#  bucket = aws_s3_bucket.illuminate_log_bucket.id
#  acl    = "log-delivery-write"
#}