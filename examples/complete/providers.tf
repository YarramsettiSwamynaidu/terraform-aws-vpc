terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0" #aws provider version, not terraform  version
    }
  }

    backend "s3" {
      bucket = "remote-tfstate1"
      key    = "vpc_test"
      region = "us-east-1"
      dynamodb_table = "remote-state"
    } 
}
provider "aws" {
  region = "us-east-1"
}
