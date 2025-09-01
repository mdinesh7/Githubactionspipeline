# .github/backend.tf

terraform {
  backend "s3" {
    # Replace with your unique S3 bucket name
    bucket = "your-initials-tf-state-bucket"

    # This key defines the "folder" structure inside the S3 bucket for your state file
    key = "environments/prod/terraform.tfstate"

    region = "us-east-1"

    # The DynamoDB table for state locking
    dynamodb_table = "terraform-state-lock-table"

    encrypt = true
  }
}
