terraform {
   backend "s3" {
     bucket = "udacity-sre-bucket-use-for-terraform"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
     profile = "default"
   }
 }

 provider "aws" {
   region = "us-east-2"

   default_tags {
     tags = local.tags
   }
 }
