resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-test-bucket-12345"
}

resource "aws_s3_bucket_public_access_block" "test_bucket_access" {
  bucket = aws_s3_bucket.test_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
