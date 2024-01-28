terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
  credentials = "./keys/my-creds.json"
  project     = "perfect-embassy-412616"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "perfect-embassy-412616-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}