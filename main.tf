provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-tf-test-bucket-miguel-19287319837892137"
  acl    = "private"
tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-miguel-19287319837892137"
    key    = "default-infrastructure.tfstate"
    region = "us-east-1"
  }
}
