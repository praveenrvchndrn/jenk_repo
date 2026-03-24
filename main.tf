terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

provider "aws" {
    region= "us-east-1" 
}

module "S3_bucket" {
    source = "git::https://github.com/praveenrvchndrn/realtime.git//S3"
    aws_s3_bucket = "three-tier-devsecops-project-bucket-s3-2405"
}