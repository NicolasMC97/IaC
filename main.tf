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

locals {
  buckets=4
}

resource "aws_s3_bucket" "example" {
  count=local.buckets
  bucket = "miguel-tf-test-bucket-gitactions-${count.index}"

  tags = {
    Name        = "My bucket TF"
    Environment = "Dev"
  }
}
