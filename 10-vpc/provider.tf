terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }

  backend "s3" {
    profile = "default"
    bucket = "aws-remote-state"
    key    = "expense-vpc-dev"
    region = "us-east-1"
    dynamodb_table = "devops-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}