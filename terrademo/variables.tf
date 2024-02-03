variable "project" {
  description = "Project"
  default     = "perfect-embassy-412616"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket name name"
  default     = "perfect-embassy-412616-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket storage class"
  default     = "STANDARD"
}

variable "credentials" {
  description = "My creds"
  default     = "./keys/my-creds.json"
}