terraform {
    required_version = ">1.0.0"
    required_providers {
      aws = {
        version = ">~4.4.7"
        source = "hashicorp/aws"
      }
    }
}

provider "aws" {
  region = var.region
}