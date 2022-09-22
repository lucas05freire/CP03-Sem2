# PROVIDER
terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

# REGION
provider "aws" {
    region                   = var.aws_region
    shared_credentials_files = ".aws/credentials"
}

# MODULES
module "vpc" {
  source = "./modules/vpc"
}
