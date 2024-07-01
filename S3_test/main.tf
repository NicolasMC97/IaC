terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
}

provider "aws" {
    region="us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-nmc-us-east"

  tags = {
    Name        = "My bucket TF"
    Environment = "Dev"
  }
}