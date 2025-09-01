provider "aws" {
  region = "us-east-1"
}

module "avatar_bucket" {
  source = "../../modules/s3-bucket" # <-- Relative path to the module

  bucket_name = "my-app-dev-avatars-12345" # Unique name
  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}