# PROVIDER
terraform {

  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }

  backend "s3" {
    bucket         = "bucketkledin"
    key            = "terraform.tfstate"
    dynamodb_table = "tabeladokinha"
    region         = "us-east-1"
  }

}

provider "aws" {
  region                   = "us-east-1"
  # shared_config_files      = ["~/.aws/config"]
  # shared_credentials_files = ["~/.aws/credentials"]
  # profile                  = "fiap"
}

