terraform {
  backend "s3" {
    bucket = "terraform-modules-cgitbucket"
    key    = "cgit-modules.tfstate"
    region = "eu-west-2"
  }
}
provider "aws" {
  region = var.region
}