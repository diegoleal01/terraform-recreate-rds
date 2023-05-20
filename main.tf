provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

terraform {
  backend "s3" {
    bucket  = "bucket_name"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }
}

module "dev" {
  source = "./dev"
}

module "hml" {
  source = "./hml"
}