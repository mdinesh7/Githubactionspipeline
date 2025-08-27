# Specifies the provider we're using (AWS) and the region
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use a recent version
    }
  }
}

# Configure the AWS Provider with a specific region
provider "aws" {
  region = "us-east-1"
}

# Define a resource to create - in this case, an S3 bucket
resource "aws_s3_bucket" "my_first_bucket" {
  # Bucket names must be globally unique. We use a variable and a random suffix.
  bucket = "${var.bucket_name_prefix}-s3-bucket"

  tags = {
    Name        = "My first Terraform bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}