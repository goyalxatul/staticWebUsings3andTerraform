terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "aws" {
  region                  = "us-east-1"
  access_key              = " "# Replace with your actual Access Key ID
  secret_key              = " " # Replace with your actual Secret Access Key
}
