provider "aws" {
  region = "us-east-1"
}

terraform {
  # Run init/plan/apply with "backend" commented-out (ueses local backend) to provision Resources (Bucket, Table)
  # Then uncomment "backend" and run init, apply after Resources have been created (uses AWS)
  backend "s3" {
    bucket = "sedem-terra333-bucket"
    key    = "cicd-demo/terraform.tfstate"
    region = "us-east-1"
  }
}

module "ec2_vpc" {
  source = "./modules/ec2_vpc"
}