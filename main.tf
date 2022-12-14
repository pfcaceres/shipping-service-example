provider "aws" {
  #profile    = "default"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "pablo123_buckets3"
tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

terraform {
  backend "s3" {
    bucket = "dev-bucket-tfstate"
    key    = "default-infrastructure.tfstate"
    region = "us-east-1"
  }
}
