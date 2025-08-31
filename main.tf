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

resource "aws_s3_bucket" "avatars" {
  bucket = "my-unique-user-avatars-bucket-12345" # Use a unique name
  acl    = "private" # This is our intentional error
}