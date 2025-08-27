# Defines an output value for the S3 bucket's name
output "s3_bucket_name" {
  description = "The final, full name of the S3 bucket created."
  value       = aws_s3_bucket.my_first_bucket.bucket
}
