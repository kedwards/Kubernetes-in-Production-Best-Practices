terraform {
  backend "s3" {
    bucket         = "devops-fail-clusters-vpc-terraform-state"
    key            = "devops-fail-clusters-vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devops-fail-clusters-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
