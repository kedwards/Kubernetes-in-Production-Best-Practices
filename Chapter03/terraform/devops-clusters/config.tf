terraform {
  backend "s3" {
    bucket         = "devops-fail-clusters-terraform-state"
    key            = "devops-fail-clusters.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devops-fail-clusters-terraform-state-lock-dynamodb"
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


data "aws_ssm_parameter" "workers_ami_id" {
  name            = "/aws/service/eks/optimized-ami/${var.cluster_version}/amazon-linux-2/recommended/image_id"
  with_decryption = false
}
