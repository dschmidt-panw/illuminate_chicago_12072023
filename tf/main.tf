terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket         	   = "illuminate-workshop-chicago-12072023-tfstate"
    key              	 = "state/terraform.tfstate"
    region         	   = "us-east-1"
    dynamodb_table 	   = "illuminate-chicago-12072023-terraform-lock"
  }
}
