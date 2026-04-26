resource "google_storage_bucket" "content" {
  name                        = "scholarpath-${var.environment}-content"
  location                    = var.gcp_region
  uniform_bucket_level_access = true
  versioning { enabled = true }
  encryption { default_kms_key_name = google_kms_crypto_key.content.id }
  force_destroy = false
}

resource "google_storage_bucket" "proctoring" {
  name                        = "scholarpath-${var.environment}-proctoring"
  location                    = var.gcp_region
  uniform_bucket_level_access = true
  # FERPA + COPPA: raw proctoring video deleted after the exam window.
  lifecycle_rule {
    action    { type = "Delete" }
    condition { age = 30 }
  }
}
