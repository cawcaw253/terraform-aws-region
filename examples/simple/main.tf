terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "current_region" {
  source = "../../"
}

module "an2_region" {
  source = "../../"

  region_name = "ap-northeast-2"
  availability_zones = ["a", "b", "c", "d"]
}

output "current_region" {
  description = "outputs of current region"
  value       = module.current_region
}

output "an2_region" {
  description = "outputs of ap-northeast-2 region"
  value       = module.an2_region
}
