terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.65.0"
    }
  }
  backend "s3" {
    bucket = "revanth-terraform"
    key    = "timing"
    region = "us-east-1"
    dynamodb_table = "timing-lock"
  }
}

provider "aws" {
  # Configuration options
}
