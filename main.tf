terraform {
  required_version = ">= 1.4.0"
  backend "s3" {
    bucket         = "bedrock-tf-state-sharon"
    key            = "project-bedrock/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "bedrock-tf-locks"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Project = "Bedrock"
      Owner   = "student"
    }
  }
}