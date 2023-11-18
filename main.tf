terraform {
  required_version = "1.6.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }

  backend "s3" {
    bucket = "joaocarlos-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options

  default_tags {
    tags = {
      owner   = "joaocarlos"
      managed = "terraform"
    }

  }
}
