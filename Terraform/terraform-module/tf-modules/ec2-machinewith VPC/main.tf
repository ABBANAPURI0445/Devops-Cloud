provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXIOQ7O2FSAGUKYOE"
  secret_key = "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"
  ## rather the passing access key and secret key use aws cli (configure aws cli)
}
module "ec2" {
  source = "../modules/ec2"
}

# module "vpc" {
# source = "xxxx"
#}




