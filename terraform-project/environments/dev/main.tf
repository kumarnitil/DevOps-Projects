terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
    region = var.region
}

/* Terraform backends define where and how Terraform stores its state data.
  This ate file, typically named terraform.tfstate, is a crucial component
  that maps the actual infrastructure to your Terraform configuration, 
  allowing Terraform to understand the current state and 
  make informed decisions about resource provisioning, modification, or destruction.
  Terraform typically supports local backend and remote backend.
*/

terraform {
    backend "s3" {
        bucket = "${var.project_name}-${var.env}-bucket
        # bucket: Specifies the S3 bucket where the state file will be stored.
        key = "dev/terraform.tfstate"
        # key: Defines the path within the bucket where the state file will be stored
        region = var.region
        # Indicates the AWS region in which the S3 bucket is located.
        dynamodb_table = "terraform-locks"
        /*
         Specifies a DynamoDB table for state locking, which prevents multiple users
        from making simultaneous changes that could corrupt the state file. 
         You'll need to create this table separately as well.
        */
        encrypt = true
        /*
        encrypt: Enables encryption at rest for the state file stored in S3, 
        ensuring that sensitive data is secured. If not specified and
        kms_key_id is also not specified, it uses SSE-S3 (AES-256) by default
        */
    }
}

module "modules" {
    source = "../../modules"
    region = var.region
    env = var.env
    project_name = var.project_name
    subnet_id = var.subnet_id
    vpc_id = var.vpc_id
}

/* The module keyword in Terraform is a fundamental building block 
that allows you to organize, encapsulate, and reuse your infrastructure code.
The module keyword is used within your Terraform configuration 
to call or instantiate another module (referred to as a child module).
*/