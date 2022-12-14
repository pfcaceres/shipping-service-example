provider "aws" {
  region     = "us-east-1"
}

resource "aws_vpc" "micro_vpc" {
  cidr_block = "50.0.0.0/16"
 
}

terraform {
  backend "s3" {
    bucket = "dev-bucket-tfstate"
    key    = "default-infrastructure.tfstate"
    region = "us-east-1"
  }
}
