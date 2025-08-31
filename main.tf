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
