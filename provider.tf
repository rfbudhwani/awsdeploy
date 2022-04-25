terraform {
  backend "s3" {
    bucket = "yashawsterraformdeploy"
    key    = "dev"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

