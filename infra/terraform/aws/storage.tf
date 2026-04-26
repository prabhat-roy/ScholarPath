# Course recordings + content library bucket. CloudFront fronts this for global delivery.
resource "aws_s3_bucket" "content" {
  bucket = "scholarpath-${var.environment}-content"
}

resource "aws_s3_bucket_versioning" "content" {
  bucket = aws_s3_bucket.content.id
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "content" {
  bucket = aws_s3_bucket.content.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.scholarpath.arn
    }
  }
}

resource "aws_s3_bucket_public_access_block" "content" {
  bucket                  = aws_s3_bucket.content.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Proctoring raw video bucket - lifecycled to delete after exam window (FERPA + COPPA).
resource "aws_s3_bucket" "proctoring" {
  bucket = "scholarpath-${var.environment}-proctoring"
}

resource "aws_s3_bucket_lifecycle_configuration" "proctoring" {
  bucket = aws_s3_bucket.proctoring.id
  rule {
    id     = "delete-after-exam-window"
    status = "Enabled"
    expiration { days = 30 }   # raw video deleted within 30 days of capture
  }
}

resource "aws_s3_bucket_public_access_block" "proctoring" {
  bucket                  = aws_s3_bucket.proctoring.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
