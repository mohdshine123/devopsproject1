# Terraform Block
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
  backend "s3" {
    bucket = "udacity-tf-shine"
    key    = "dev/terraform.tfstate"
    region = "us-east-2"
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
}

