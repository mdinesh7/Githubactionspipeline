# Defines an output value for the S3 bucket's name
output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.avatars.arn
}
