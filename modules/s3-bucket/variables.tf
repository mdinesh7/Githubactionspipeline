# Defines an input variable for the bucket name prefix
variable "bucket_name" {
  description = "A prefix for the S3 bucket name to help ensure uniqueness."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign the bucket."
  type        = map(string)
  default     = {}

}
