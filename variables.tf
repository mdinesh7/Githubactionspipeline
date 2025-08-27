# Defines an input variable for the bucket name prefix
variable "bucket_name_prefix" {
  description = "A prefix for the S3 bucket name to help ensure uniqueness."
  type        = string
  default     = "gemini-tf-demo" # Change this to something unique to you!
}