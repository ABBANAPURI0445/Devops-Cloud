provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXIOQ7O2FSAGUKYOE"
  secret_key = "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"
}
module "dcos-vpc" {
  source  = "dcos-terraform/vpc/aws"
  version = "~> 0.2.0"

  cluster_name = "production"
  availability_zones = ["us-east-1b"]
  subnet_range = "172.16.0.0/16"
  # providers {
  # aws = "aws.my-provider"
  # }
}
