terraform {
  required_providers {
    aws = {
      version = "4.46.0"
      source  = "hashicorp/aws"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
  required_version = ">= 1"
}
