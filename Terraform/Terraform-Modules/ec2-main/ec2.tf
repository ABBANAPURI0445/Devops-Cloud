provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAXIOQ7O2FSAGUKYOE"
  secret_key = "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"
}

module "myvpc" {
  source = "../module/vpc-ec2"
  vpcid = "${module.myvpc.vpc_id}"
  
}
